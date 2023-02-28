#ifndef __H_ADPCM__
#define __H_ADPCM__

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

#define ADPCM_DECODE_BUFFER_BYTES (15625*4)

typedef struct {
  FILE* fp;
  int16_t step_index;
  int16_t last_estimate;
  size_t num_samples;
  uint8_t* buffer;
} ADPCM_DECODE_HANDLE;

int32_t adpcm_init(ADPCM_DECODE_HANDLE* adpcm, FILE* fp);
void adpcm_close(ADPCM_DECODE_HANDLE* adpcm);
size_t adpcm_decode(ADPCM_DECODE_HANDLE* adpcm, float* decode_buffer, size_t decode_samples);

#endif