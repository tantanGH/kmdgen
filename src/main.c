#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stat.h>
#include <doslib.h>
#include <iocslib.h>
#include <aubio.h>
#include "himem.h"
//#include "pcm.h"
//#include "adpcm.h"
//#include "nas_adpcm.h"
#include "kmdgen.h"

// show help message
static void show_help_message() {
//  printf("usage: kmdgen [options] <input-file[.pcm|.s(32|44|48)|.m(32|44|48)|.a(32|44|48)|.n(32|44|48)]>\n");
  printf("usage: kmdgen [options] <input-file[.s(32|44|48)|.m(32|44|48)]>\n");
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
  int32_t pcm_freq = 44100;
  int16_t pcm_channels = 2;
  int16_t pcm_format = FORMAT_PCM;
  if (stricmp(".s32", pcm_file_exp) == 0) {
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
  } else if (stricmp(".wav", pcm_file_exp) == 0) {
    pcm_freq = 0;
    pcm_channels = 0;
    pcm_format = FORMAT_WAVE;
/*
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
  } else if (stricmp(".pcm", pcm_file_exp) == 0) {
    pcm_freq = 15625;                 // fixed
    pcm_channels = 1;
    pcm_format = FORMAT_ADPCM;
*/
  }

  // open file
  FILE* fp = fopen(pcm_file_name, "rb");

  // check file size
  fseek(fp, 0, SEEK_END);
  size_t pcm_file_size = ftell(fp);
  fseek(fp, 0, SEEK_SET);

/*
  // encoder, decoder and chain tables
  ADPCM_DECODE_HANDLE adpcm_decoder = { 0 };
  PCM_DECODE_HANDLE pcm_decoder = { 0 };
  NAS_ADPCM_DECODE_HANDLE nas_adpcm_decoder = { 0 };

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
*/


  aubio_source_t* aubio_source = new_aubio_source(pcm_file_name, pcm_freq, AUBIO_HOP_SIZE);

  if (pcm_freq == 0) {
    pcm_freq = aubio_source_get_samplerate(aubio_source);
  }
  if (pcm_channels == 0) {
    pcm_channels = aubio_source_get_channels(aubio_source);
  }

  // describe source file information
  printf("\n");
  printf("File name     : %s\n", pcm_file_name);
  printf("Data size     : %d [bytes]\n", pcm_file_size);
  printf("Data format   : %s\n", 
            pcm_format == FORMAT_WAVE ? "WAVE" : 
            "16bit signed raw PCM (big endian)");

  printf("PCM frequency : %d [Hz]\n", pcm_freq);
  printf("PCM channels  : %s\n", pcm_channels == 1 ? "mono" : "stereo");
  printf("PCM length    : %4.2f [sec]\n", aubio_source_get_duration(aubio_source));

  float* decode_buffer = (float*)himem_malloc( AUBIO_FRAME_SIZE * pcm_channels * sizeof(float), 0);

  // buffer allocation for aubio
  uint_t aubio_buffer_size = AUBIO_FRAME_SIZE * pcm_channels;
//  fvec_t* aubio_buffer = new_fvec( AUBIO_FRAME_SIZE * pcm_channels );
  fvec_t* aubio_buffer = new_fvec( AUBIO_HOP_SIZE );
  aubio_tempo_t* aubio_tempo = new_aubio_tempo("default", AUBIO_FRAME_SIZE, AUBIO_HOP_SIZE, pcm_freq);

  uint_t n_frames = 0;
  uint_t frames_read = 0;
  uint_t last_beat_pos = 0;
  uint_t measure_count = 0;

  //printf("Measure\tStart Time\tEnd Time\n");

  // create some vectors
//  fvec_t * in = new_fvec (AUBIO_HOP_SIZE); // input audio buffer
  fvec_t * aubio_out = new_fvec (1); // output position
  // create tempo object
//  aubio_tempo_t * o = new_aubio_tempo("default", AUBIO_FRAME_SIZE, AUBIO_HOP_SIZE, pcm_freq);

  printf("\n");

  do {
    printf("\rAnalyzing ... %d frames",n_frames);
    if (B_SFTSNS() & 0x01) break;
    // put some fresh data in input vector
    aubio_source_do(aubio_source, aubio_buffer, &frames_read);
    // execute tempo
    aubio_tempo_do(aubio_tempo, aubio_buffer, aubio_out);
    // do something with the beats
    if (aubio_out->data[0] != 0 && aubio_tempo_get_bpm(aubio_tempo) < 300) {
      printf("\nbeat at %.3fms, %.3fs, frame %d, %.2f bpm "
          "with confidence %.2f\n",
          aubio_tempo_get_last_ms(aubio_tempo), aubio_tempo_get_last_s(aubio_tempo),
          aubio_tempo_get_last(aubio_tempo), aubio_tempo_get_bpm(aubio_tempo),
          aubio_tempo_get_confidence(aubio_tempo));
    }
    n_frames += frames_read;
  } while ( frames_read == AUBIO_HOP_SIZE );
  printf("\nread %.2fs, %d frames at %dHz (%d blocks) from %s\n",
      n_frames * 1. / pcm_freq,
      n_frames, pcm_freq,
      n_frames / AUBIO_HOP_SIZE, pcm_file_name);

/*
  fvec_t* tempo_out = new_fvec(2);

  do {

    printf("\rAnalyzing ... %d frames",n_frames);
    if (B_SFTSNS() & 0x01) break;

    aubio_source_do(aubio_source, aubio_buffer, &frames_read);

    // compute tempo and beat positions for current frame

    aubio_tempo_do(aubio_tempo, aubio_buffer, tempo_out);

    // Check if beat position has changed since last frame
    uint_t beat_pos = (uint_t) fvec_get_sample(tempo_out, 0);
    if (beat_pos != last_beat_pos) {

      // Compute measure number for current beat position
      uint_t measure_num = measure_count / 4 + 1;

      // Compute start and end time of current measure
      float measure_start_time = (float) last_beat_pos / pcm_freq;
      float measure_end_time = (float) beat_pos / pcm_freq;

      // Output measure information
      printf("\n%u\t%.2f\t%.2f\n", measure_num, measure_start_time, measure_end_time);

      // Increment measure count
      measure_count++;
    }

    // Update last beat position
    last_beat_pos = beat_pos;
    n_frames += frames_read;
  } while (frames_read == AUBIO_HOP_SIZE);


    del_fvec(tempo_out);
*/
  rc = 0;

catch:
  // reclaim aubio resources
  if (aubio_tempo != NULL) {
    del_aubio_tempo(aubio_tempo);
    aubio_tempo = NULL;
  }
  if (aubio_buffer != NULL) {
    del_fvec(aubio_buffer);
    aubio_buffer = NULL;
  }
  if (aubio_source != NULL) {
    del_aubio_source(aubio_source);
    aubio_source = NULL;
  }
  if (decode_buffer != NULL) {
    himem_free(decode_buffer, 0);
    decode_buffer = NULL;
  }

  // close pcm file
  if (fp != NULL) {
    fclose(fp);
    fp = NULL;
  }
/*
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
*/
exit:
  return rc;
}
