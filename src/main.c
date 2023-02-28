#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stat.h>
#include <doslib.h>
#include <iocslib.h>
#include <math.h>
#include <libxtract.h>
#include "himem.h"
#include "pcm.h"
#include "adpcm.h"
#include "nas_adpcm.h"
#include "kmdgen.h"

// show help message
static void show_help_message() {
  printf("usage: kmdgen [options] <input-file[.pcm|.s(32|44|48)|.m(32|44|48)|.a(32|44|48)|.n(32|44|48)]>\n");
  printf("options:\n");
  printf("     -m<n> ... output time chart lines every <n> measures (1-32,default:4)\n");
  printf("     -s<n> ... skip <n> measures before starting output (0-999,default:0)\n");
  printf("     -q    ... quiet mode\n");
  printf("     -l    ... assume s32/s44/s48 as little endian 16bit raw PCM format\n");
  printf("     -h    ... show help message\n");
  printf("     -o <out-name> ... output file name (default:auto assign)\n");
}

// main
int32_t main(int32_t argc, uint8_t* argv[]) {

  // default return code
  int32_t rc = 1;

  // credit
  printf("KMDGEN.X - KMD file template generator for X680x0 version " VERSION " by tantan\n");

  // parse command line options
  uint8_t* pcm_file_name = NULL;
  int16_t measure_interval = 4;
  int16_t measure_skip = 0;
  int16_t quiet_mode = 0;
  int16_t use_little_endian = 0;

  // output file name
  static uint8_t out_file_name[ MAX_PATH_LEN ];
  out_file_name[0] = '\0';

  // xtract buffer
  float* xtract_pcm_buffer = NULL;

  for (int16_t i = 1; i < argc; i++) {
    if (argv[i][0] == '-' && strlen(argv[i]) >= 2) {
      if (argv[i][1] == 'm') {
        measure_interval = atoi(argv[i]+2);
        if (measure_interval < 1 || measure_interval > 32) {
          show_help_message();
          goto exit;
        }
      } else if (argv[i][1] == 's') {
        measure_skip = atoi(argv[i]+2);
        if (measure_skip < 0 || measure_skip > 999) {
          show_help_message();
          goto exit;
        }
      } else if (argv[i][1] == 'q') {
        quiet_mode = 1;
      } else if (argv[i][1] == 'l') {
        use_little_endian = 1;
      } else if (argv[i][1] == 'h') {
        show_help_message();
        goto exit;
      } else {
        printf("error: unknown option (%s).\n",argv[i]);
        goto exit;
      }
    } else {
      if (pcm_file_name != NULL) {
        printf("error: multiple files are not supported.\n");
        goto exit;
      }
      pcm_file_name = argv[i];
    }
  }

  if (pcm_file_name == NULL || strlen(pcm_file_name) < 5) {
    show_help_message();
    goto exit;
  }

  // input pcm file name and extension
  uint8_t* pcm_file_exp = pcm_file_name + strlen(pcm_file_name) - 4;

  // input format check
  int32_t pcm_freq = 15625;
  int16_t pcm_channels = 1;
  int16_t pcm_format = FORMAT_ADPCM;
  if (stricmp(".pcm", pcm_file_exp) == 0) {
    pcm_freq = 15625;                 // fixed
    pcm_channels = 1;
    pcm_format = FORMAT_ADPCM;
  } else if (stricmp(".s32", pcm_file_exp) == 0) {
    pcm_freq = 32000;
    pcm_channels = 2;
    pcm_format = FORMAT_PCM;
  } else if (stricmp(".s44", pcm_file_exp) == 0) {
    pcm_freq = 44100;
    pcm_channels = 2;
    pcm_format = FORMAT_PCM;
  } else if (stricmp(".s48", pcm_file_exp) == 0) {
    pcm_freq = 48000;
    pcm_channels = 2;
    pcm_format = FORMAT_PCM;
  } else if (stricmp(".m32", pcm_file_exp) == 0) {
    pcm_freq = 32000;
    pcm_channels = 1;
    pcm_format = FORMAT_PCM;
  } else if (stricmp(".m44", pcm_file_exp) == 0) {
    pcm_freq = 44100;
    pcm_channels = 1;
    pcm_format = FORMAT_PCM;
  } else if (stricmp(".m48", pcm_file_exp) == 0) {
    pcm_freq = 48000;
    pcm_channels = 1;
    pcm_format = FORMAT_PCM;
  } else if (stricmp(".a32", pcm_file_exp) == 0) {
    pcm_freq = 32000;
    pcm_channels = 2;
    pcm_format = FORMAT_NAS_ADPCM;
  } else if (stricmp(".a44", pcm_file_exp) == 0) {
    pcm_freq = 44100;
    pcm_channels = 2;
    pcm_format = FORMAT_NAS_ADPCM;
  } else if (stricmp(".a48", pcm_file_exp) == 0) {
    pcm_freq = 48000;
    pcm_channels = 2;
    pcm_format = FORMAT_NAS_ADPCM;
  } else if (stricmp(".n32", pcm_file_exp) == 0) {
    pcm_freq = 32000;
    pcm_channels = 1;
    pcm_format = FORMAT_NAS_ADPCM;
  } else if (stricmp(".n44", pcm_file_exp) == 0) {
    pcm_freq = 44100;
    pcm_channels = 1;
    pcm_format = FORMAT_NAS_ADPCM;
  } else if (stricmp(".n48", pcm_file_exp) == 0) {
    pcm_freq = 48000;
    pcm_channels = 1;
    pcm_format = FORMAT_NAS_ADPCM;
  }

  // encoder, decoder and chain tables
  ADPCM_DECODE_HANDLE adpcm_decoder = { 0 };
  PCM_DECODE_HANDLE pcm_decoder = { 0 };
  NAS_ADPCM_DECODE_HANDLE nas_adpcm_decoder = { 0 };

  // open file
  FILE* fp = fopen(pcm_file_name, "rb");

  // check file size
  fseek(fp, 0, SEEK_END);
  size_t pcm_file_size = ftell(fp);
  fseek(fp, 0, SEEK_SET);

  // init adpcm encoder
  if (pcm_format == FORMAT_ADPCM) {
    if (adpcm_init(&adpcm_decoder, fp) != 0) {
      printf("error: ADPCM decoder initialization error.\n");
      goto catch;
    }
  }

  // init pcm decoder
  if (pcm_format == FORMAT_PCM) {
    if (pcm_init(&pcm_decoder, fp, pcm_channels, use_little_endian) != 0) {
      printf("error: PCM decoder initialization error.\n");
      goto catch;
    }
  }

  // init nas adpcm decoder
  if (pcm_format == FORMAT_NAS_ADPCM) {
    if (nas_adpcm_init(&nas_adpcm_decoder, fp, pcm_channels) != 0) {
      printf("error: YM2608 adpcm decoder initialization error.\n");
      goto catch;
    }
  }

  // describe source file information
  printf("\n");
  printf("File name     : %s\n", pcm_file_name);
  printf("Data size     : %d [bytes]\n", pcm_file_size);
  printf("Data format   : %s\n", 
      pcm_format == FORMAT_ADPCM ? "X68k(MSM6258V) ADPCM" : 
      pcm_format == FORMAT_PCM && use_little_endian ? "16bit signed raw PCM (little endian)" :
      pcm_format == FORMAT_PCM && !use_little_endian ? "16bit signed raw PCM (big endian)" :
      pcm_format == FORMAT_NAS_ADPCM ? "YM2608 ADPCM" :
      "X68k(MSM6258V) ADPCM");

  float pcm_1sec_size = pcm_freq * pcm_channels * (pcm_format == FORMAT_PCM ? 2 : 0.5);
  printf("PCM frequency : %d [Hz]\n", pcm_freq);
  printf("PCM channels  : %s\n", pcm_channels == 1 ? "mono" : "stereo");
  printf("PCM length    : %4.2f [sec]\n", (float)pcm_file_size / pcm_1sec_size);

  // buffer allocation for xtract
  size_t xtract_buffer_len = LIBXTRACT_FRAME_SIZE;
  xtract_pcm_buffer = (float*)himem_malloc(sizeof(float) * xtract_buffer_len, 0);

  // initialize LibXtract
  xtract_t xtract;
  xtract_init(&xtract, LIBXTRACT_FRAME_SIZE, XTRACT_REAL_TIME);

  // set parameters for onset detection
  xtract_set_onset_method(&xtract, XTRACT_ONSET_HFC);
  xtract_set_peak_threshold(&xtract, LIBXTRACT_THRESHOLD);

  // set parameters for tempo detection
  xtract_set_bpm_range(&xtract, LIBXTRACT_BPM_RANGE);

  // initialize onset detection and tempo detection
  xtract_onset_init(&xtract);
  xtract_tempo_init(&xtract);



  rc = 0;

catch:
  // close pcm file
  if (fp != NULL) {
    fclose(fp);
    fp = NULL;
  }

  // reclaim xtract pcm buffer
  if (xtract_pcm_buffer != NULL) {
    himem_free(xtract_pcm_buffer, 0);
    xtract_pcm_buffer = NULL;
  }

  // close adpcm decoder
  if (pcm_format == FORMAT_ADPCM) {
    adpcm_close(&adpcm_decoder);
  }

  // close pcm decoder
  if (pcm_format == FORMAT_PCM) {
    pcm_close(&pcm_decoder);
  }

  // close nas adpcm decoder
  if (pcm_format == FORMAT_NAS_ADPCM) {
    nas_adpcm_close(&nas_adpcm_decoder);
  }

exit:
  return rc;
}
