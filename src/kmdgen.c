#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <doslib.h>

#define VERSION "0.1.0 (2023/03/03)"

// main
int32_t main(int32_t argc, uint8_t* argv[]) {

  // default return code
  int32_t rc = 1;

  // credit
  printf("KMDGEN.X - KMD file template generator for X680x0 version " VERSION " by tantan\n");

  // parse command line options
  if (argc < 8) {
    printf("usage: KMDGEN.X <total-seconds> <bpm> <beat-interval> <beat-skip> <event-offset> <erase-offset> <out-file>\n");
    goto exit;
  }

  // command line parameters
  int32_t total_seconds = atoi(argv[1]);
  double bpm = atof(argv[2]);
  int32_t beat_interval = atoi(argv[3]);
  int32_t beat_skip = atoi(argv[4]);
  int32_t event_offset = atoi(argv[5]);
  int32_t erase_offset = atoi(argv[6]);
  uint8_t* out_file = argv[7];

  // parameter range check
  if (total_seconds <= 0) {
    printf("error: total-seconds must be 1 or more.\n");
    goto exit;
  }
  if (bpm <= 0) {
    printf("error: bpm must be 1 or more.\n");
    goto exit;
  }
  if (beat_interval <= 0) {
    printf("error: beat-interval must be 1 or more.");
    goto exit;
  }

  // output file existence check
  struct FILBUF filbuf;
  if (FILES(&filbuf, out_file, 0x20) >= 0) {
    printf("warning: output KMD file (%s) already exists. overwrite? (y/n)", out_file);
    uint8_t c;
    do {
      c = INKEY();
      if (c == 'n' || c == 'N') {
        printf("\ncanceled.\n");
        goto exit;
      }
    } while (c != 'y' && c != 'Y');
    printf("\n");
  }

  // total ticks (1 tick = 10 msec)
  int32_t total_ticks = total_seconds * 100;

  // bpm * tick counter for down sampling
  double bpm_ticks = 0;

  // beat counter
  int32_t beats = 0;

  // event counter
  int32_t events = 0;

  // open output file
  FILE* fp = fopen(out_file, "w");
  if (fp == NULL) goto catch;

  // KMD header
  fprintf(fp,"KMD100\n\n");

  // event tracking
  for (int32_t t = 1; t <= total_ticks; t++) {

    // beat detection with down sampling
    bpm_ticks += bpm;
    if (bpm_ticks >= 60 * 100) {
      beats += 1;
      bpm_ticks -= 60 * 100;

      // event detection with beat skips and intervals
      if (beats >= beat_skip && (( beats - beat_skip ) % beat_interval) == 0) {

        // x,y position
        int16_t x = 0;
        int16_t y = ( events % 2 ) * 2;

        // event start time
        int32_t st = t - event_offset;
        int32_t st_min = (int32_t)( st / 100.0 / 60.0 ); 
        int32_t st_sec = ((int32_t)( st / 100.0 )) % 60;
        int32_t st_msec = st % 100;

        // event end time
        int32_t et = st + (int32_t)( ( 4 - y ) / 2 * beat_interval * 60.0 * 100.0 / bpm ) - erase_offset - 1;
        int32_t et_min = (int32_t)( et / 100.0 / 60.0 );
        int32_t et_sec = (int32_t)( et / 100.0 ) % 60;
        int32_t et_msec = et % 100;

        // event template line
        fprintf(fp, "x%d,y%d,s%02d:%02d:%02d,e%02d:%02d:%02d,\"event %d\"\n",
                x, y, st_min, st_sec, st_msec, et_min, et_sec, et_msec, events + 1);

        // event counter
        events += 1;

      }
  
    }

  }

  rc = 0;

catch:
  if (fp != NULL) {
    fclose(fp);
    fp = NULL;
  }

exit:
  return rc;
}
