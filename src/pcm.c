#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "himem.h"
#include "pcm.h"

//
//  initialize pcm decode handle
//
int32_t pcm_init(PCM_DECODE_HANDLE* pcm, FILE* fp, int16_t channels, int16_t little_endian) {

  pcm->fp = fp;
  pcm->channels = channels;
  pcm->little_endian = little_endian;
  pcm->num_samples = 0;
  pcm->buffer = (int16_t*)himem_malloc(PCM_DECODE_BUFFER_BYTES,0);

  return pcm->buffer == NULL ? -1 : 0;
}

//
//  close pcm write handle
//
void pcm_close(PCM_DECODE_HANDLE* pcm) {
  if (pcm->buffer != NULL) {
    himem_free(pcm->buffer, 0);
    pcm->buffer = NULL;
  }
}

//
//  decode PCM to 16bit float mono array
//
size_t pcm_decode(PCM_DECODE_HANDLE* pcm, float* decode_buffer, size_t decode_samples) {

  size_t fread_len = decode_samples * pcm->channels;
  if (fread_len > PCM_DECODE_BUFFER_BYTES / sizeof(int16_t)) {
    fread_len = PCM_DECODE_BUFFER_BYTES / sizeof(int16_t);
  }

  size_t read_len = 0;
  do {
    size_t len = fread(pcm->buffer + read_len, sizeof(int16_t), fread_len - read_len, pcm->fp);
    if (len == 0) break;
    read_len += len;
  } while (read_len < fread_len);

  size_t decode_ofs = 0;

  if (pcm->little_endian) {
    if (pcm->channels == 2) {
      for (size_t i = 0; i < read_len / 2; i++) {
        uint8_t* buf = (uint8_t*)&(pcm->buffer[ i * 2 ]);
        int16_t lch = (int16_t)(buf[0] + (buf[1] << 8));
        int16_t rch = (int16_t)(buf[2] + (buf[3] << 8));
        decode_buffer[ decode_ofs++ ] = ((float)lch + (float)rch) / 65536.0;
        pcm->num_samples++;
      }
    } else {
      for (size_t i = 0; i < read_len; i++) {
        uint8_t* buf = (uint8_t*)&(pcm->buffer[ i ]);
        int16_t mch = (int16_t)(buf[0] + (buf[1] << 8));
        decode_buffer[ decode_ofs++ ] = (float)mch / 32768.0;
        pcm->num_samples++;
      }
    }
  } else {
    if (pcm->channels == 2) {
      for (size_t i = 0; i < read_len / 2; i++) {
        decode_buffer[ decode_ofs++ ] = ((float)pcm->buffer[ i * 2 ] + (float)pcm->buffer[ i * 2 + 1 ]) / 65536.0;
        pcm->num_samples++;
      }
    } else {
      for (size_t i = 0; i < read_len; i++) {
        decode_buffer[ decode_ofs++ ] = (float)pcm->buffer[ i ] / 32768.0;
        pcm->num_samples++;
      }
    }
  }

  return decode_ofs;
}
