#ifndef __H_NAS_ADPCM__
#define __H_NAS_ADPCM__

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

#define NAS_ADPCM_DECODE_BUFFER1_BYTES (48000*4)
#define NAS_ADPCM_DECODE_BUFFER2_BYTES (48000*8)
#define NAS_ADPCMLIB_CONV_TABLE_SIZE  (141312)

typedef struct {
  FILE* fp;
  int16_t channels;
  size_t num_samples;
  uint8_t* conv_table;
  uint8_t* buffer1;
  int16_t* buffer2;
} NAS_ADPCM_DECODE_HANDLE;

int32_t nas_adpcm_init(NAS_ADPCM_DECODE_HANDLE* nas, FILE* fp, int16_t channels);
void nas_adpcm_close(NAS_ADPCM_DECODE_HANDLE* nas);
size_t nas_adpcm_decode(NAS_ADPCM_DECODE_HANDLE* nas, float* decode_buffer, size_t decode_samples);

#endif