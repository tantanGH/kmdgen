#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include "adpcm.h"
#include "himem.h"

//
//  MSM6258V ADPCM constant tables
//
static const int16_t step_adjust[] = { -1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8 };

static const int16_t step_size[] = { 
        16,  17,  19,  21,  23,  25,  28,  31,  34,  37,  41,  45,   50,   55,   60,   66,
        73,  80,  88,  97, 107, 118, 130, 143, 157, 173, 190, 209,  230,  253,  279,  307,
       337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552 };

//
//  MSM6258V ADPCM decode
//
static int16_t decode(uint8_t code, int16_t* step_index, int16_t last_data) {

  int16_t si = *step_index;
  int16_t ss = step_size[ si ];

  int16_t delta = ( ss >> 3 );
  if (code & 0x01) {
    delta += (ss >> 2);
  }
  if (code & 0x02) {
    delta += (ss >> 1);
  }
  if (code & 0x04) {
    delta += ss;
  }
  if (code & 0x08) {
    delta = -delta;
  }
    
  int16_t estimate = last_data + delta;
  if (estimate > 2047) {
    estimate = 2047;
  }

  if (estimate < -2048) {
    estimate = -2048;
  }

  si += step_adjust[ code ];
  if (si < 0) {
    si = 0;
  }
  if (si > 48) {
    si = 48;
  }
  *step_index = si;

  return estimate;
}

//
//  MSM6258V ADPCM encode
//
static uint8_t encode(int16_t current_data, int16_t last_estimate, int16_t* step_index, int16_t* new_estimate) {

  int16_t ss = step_size[ *step_index ];

  int16_t delta = current_data - last_estimate;

  uint8_t code = 0x00;
  if (delta < 0) {
    code = 0x08;          // bit3 = 1
    delta = -delta;
  }
  if (delta >= ss) {
    code += 0x04;         // bit2 = 1
    delta -= ss;
  }
  if (delta >= (ss>>1)) {
    code += 0x02;         // bit1 = 1
    delta -= ss>>1;
  }
  if (delta >= (ss>>2)) {
    code += 0x01;         // bit0 = 1
  } 

  // need to use decoder to estimate
  *new_estimate = decode(code, step_index, last_estimate);

  return code;
}

//
//  initialize adpcm decode handle
//
int32_t adpcm_init(ADPCM_DECODE_HANDLE* adpcm, FILE* fp) {

  adpcm->fp = fp;
  adpcm->step_index = 0;
  adpcm->last_estimate = 0;
  adpcm->num_samples = 0;
  adpcm->buffer = himem_malloc(ADPCM_DECODE_BUFFER_BYTES, 0);

  return adpcm->buffer == NULL ? -1 : 0;
}

//
//  close adpcm decode handle
//
void adpcm_close(ADPCM_DECODE_HANDLE* adpcm) {
  if (adpcm->buffer != NULL) {
    himem_free(adpcm->buffer, 0);
    adpcm->buffer = NULL;
  }
}

//
//  decode ADPCM to 16bit float mono array
//
size_t adpcm_decode(ADPCM_DECODE_HANDLE* adpcm, float* decode_buffer, size_t decode_samples) {

  size_t fread_len = decode_samples / 2;
  if (fread_len > ADPCM_DECODE_BUFFER_BYTES) {
    fread_len = ADPCM_DECODE_BUFFER_BYTES;
  }

  size_t read_len = 0;
  do {
    size_t len = fread(adpcm->buffer + read_len, sizeof(uint8_t), fread_len - read_len, adpcm->fp);
    if (len == 0) break;
    read_len += len;
  } while (read_len < fread_len);

  size_t adpcm_len = read_len * 2;
  size_t adpcm_ofs = 0;
  size_t decode_ofs = 0;

  do {
    uint8_t code;
    if ((adpcm->num_samples % 2) == 0) {
      code = adpcm->buffer[ adpcm_ofs ] & 0x0f;
    } else {
      code = ( adpcm->buffer[ adpcm_ofs ] >> 4 ) & 0x0f;
      adpcm_ofs++;
    }
    int16_t new_estimate = decode(code, &adpcm->step_index, adpcm->last_estimate);
    decode_buffer[ decode_ofs++ ] = (float)new_estimate / 2048.0;
    adpcm->last_estimate = new_estimate;    
    adpcm->num_samples++; 
  } while (adpcm_ofs < adpcm_len);

  return decode_ofs;
}
