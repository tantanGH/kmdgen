#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "nas_adpcm.h"
#include "himem.h"

//
//  init decoder handle
//
int32_t nas_adpcm_init(NAS_ADPCM_DECODE_HANDLE* nas, FILE* fp, int16_t channels) {

  int32_t rc = -1;

  nas->fp  =fp;
  nas->channels = channels;
  nas->num_samples = 0;
  nas->conv_table = NULL;
 
  nas->buffer1 = himem_malloc(NAS_ADPCM_DECODE_BUFFER1_BYTES, 0);
  if (nas->buffer1 == NULL) goto exit;
  
  nas->buffer2 = himem_malloc(NAS_ADPCM_DECODE_BUFFER2_BYTES, 0);
  if (nas->buffer2 == NULL) goto exit;

  nas->conv_table = himem_malloc(NAS_ADPCMLIB_CONV_TABLE_SIZE, 0);
  if (nas->conv_table == NULL) goto exit;

  register uint32_t reg_a0 asm ("a0") = (uint32_t)(nas->conv_table);
  asm volatile (
    "jbsr  atop_make_buffer\n"
    :                   // output operand
    : "r" (reg_a0)      // input operand
    :                   // clobbered register
  );

  register uint32_t reg_d0 asm ("d0") = (uint32_t)(nas->channels);
  asm volatile (
    "jbsr  atop_init\n"
    :                   // output operand
    : "r" (reg_d0)      // input operand
    :                   // clobbered register
  );

  rc = 0;

exit:
  return rc;
}

//
//  close decoder handle
//
void nas_adpcm_close(NAS_ADPCM_DECODE_HANDLE* nas) {
  if (nas->buffer1 != NULL) {
    himem_free(nas->buffer1, 0);
    nas->buffer1 = NULL;
  }
  if (nas->buffer2 != NULL) {
    himem_free(nas->buffer2, 0);
    nas->buffer2 = NULL;
  }
  if (nas->conv_table != NULL) {
    himem_free(nas->conv_table, 0);
    nas->conv_table = NULL;
  }
}

//
//  decode NAS ADPCM stream into the specified buffer
//
size_t nas_adpcm_decode_buffer(NAS_ADPCM_DECODE_HANDLE* nas, uint8_t* adpcm_data, size_t adpcm_data_bytes, int16_t* decode_buffer, size_t decode_buffer_len) {

  // check decode buffer size
  if (adpcm_data_bytes * 4 / sizeof(int16_t) > decode_buffer_len) return 0;

}

//
//  decode YM2608 ADPCM to 16bit float mono array
//
size_t nas_adpcm_decode(NAS_ADPCM_DECODE_HANDLE* nas, float* decode_buffer, size_t decode_samples) {

  size_t fread_len = decode_samples * nas->channels / 2;
  if (fread_len > NAS_ADPCM_DECODE_BUFFER1_BYTES) {
    fread_len = NAS_ADPCM_DECODE_BUFFER1_BYTES;
  }

  size_t read_len = 0;
  do {
    size_t len = fread(nas->buffer1 + read_len, sizeof(uint8_t), fread_len - read_len, nas->fp);
    if (len == 0) break;
    read_len += len;
  } while (read_len < fread_len);

  // decode NAS ADPCM
  register uint32_t reg_d0 asm ("d0") = (uint32_t)(read_len);
  register uint32_t reg_a0 asm ("a0") = (uint32_t)(nas->buffer1);
  register uint32_t reg_a1 asm ("a1") = (uint32_t)(nas->buffer2);
  asm volatile (
    "jbsr  atop_exec\n"
    :                   // output operand
    : "r" (reg_d0),     // input operand
      "r" (reg_a0),     // input operand
      "r" (reg_a1)      // input operand
    :                   // clobbered register
  );

  size_t decode_ofs = 0;

  if (nas->channels == 2) {
    for (size_t i = 0; i < read_len * 4 / sizeof(int16_t) / nas->channels; i++) {
      decode_buffer[ decode_ofs++ ] = ((float)nas->buffer2[ i * 2 ] + (float)nas->buffer2[ i * 2 + 1 ]) / 65536.0;
      nas->num_samples++;
    }
  } else {
    for (size_t i = 0; i < read_len * 4 / sizeof(int16_t) / nas->channels; i++) {
      decode_buffer[ decode_ofs++ ] = (float)nas->buffer2[ i ] / 32768.0;
      nas->num_samples++;
    }
  }

  return decode_ofs;
}
