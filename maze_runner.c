#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "mazelib.h"
#include "runner.h"

void usage(void);

int main(int argc, char* argv[]) {
  if (argc < 3) {
    usage();
    return 1;
  }

  int width = (int) strtol(argv[1], NULL, 10);
  int height = (int) strtol(argv[2], NULL, 10);

// The dimensions are valid when the width is between 9 and 79 (inclusive)
// and the height is between 9 and 25 (inclusive).  Both the width and the
// height must also be odd.
  bool dimensions_are_valid = ((9 <= width && width <= 157) &&
                               (9 <= height && height <= 45) &&
                               (width % 2 == 1) && (height % 2 == 1));
  if(!dimensions_are_valid) {
    usage();
    return 1;
  }

  // Oh, if you want to reuse the same maze for testing purposes, 
  // you can pass a secret 3rd argument to the program.  Any integer
  // will do, just pass the same one each time and it will be the same maze
  unsigned int seed;
  if (argc == 4) {
    seed = (int) strtol(argv[3], NULL, 10);
  } else {
    seed = time(NULL);
  }

  maze_init(width, height, seed);

  maze_display();
  printf("\n\n\n");
// You must implement this function in runner.c and declare it in runner.h
  runner_solve();
  maze_display();
  return 0;
}

// This function displays the usage message if the parameters are missing 
// or incorrect.
void usage(void) {
  printf("Usage: mazerunner width height \n");
  printf("\t width must be an odd integer between 9 and 79 inclusive\n");
  printf("\t height must be an odd integer between 9 and 25 inclusive\n\n");
}
