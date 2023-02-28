#ifndef __H_PCM__
#define __H_PCM__

#include <stdlib.h>
#include <stdint.h>
#include <stddef.h>

#define PCM_DECODE_BUFFER_BYTES (48000*4*2)

typedef struct {
  FILE* fp;
  int16_t channels;
  int16_t little_endian;
  size_t num_samples;
  int16_t* buffer;
} PCM_DECODE_HANDLE;

int32_t pcm_init(PCM_DECODE_HANDLE* pcm, FILE* fp, int16_t channels, int16_t little_endian);
void pcm_close(PCM_DECODE_HANDLE* pcm);
size_t pcm_decode(PCM_DECODE_HANDLE* pcm, float* decode_buffer, size_t decode_samples);

#endif