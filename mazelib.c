// PAY NO MIND TO ANYTHING FROM HERE...
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>
#include "mazelib.h"

#define NORTH 0
#define EAST 1
#define SOUTH 2
#define WEST 3

static void carve(int, int);
static void shuffle(int[4]);

static int maze_width;
static int maze_height;
static char *maze;
static bool is_maze_being_initialized = false;
// ... TO HERE


//////////////////////////////////////////////////////////////////////////
// BEGIN: THINGS YOU SHOULD LOOK AT (mostly the comments)               //
//////////////////////////////////////////////////////////////////////////


// Returns the character in the maze at the given row and column.  
// First checks to ensure that the attempted access is valid and, 
// if not, terminates the program.
char maze_get_char(int row, int col) {
  bool is_in_bounds = ((0 <= row && row < maze_height) &&
                       (0 <= col && col < maze_width));
  if (!is_in_bounds) {
    printf("Illegal maze access at row %i and col %i\n", row, col);
    exit(EXIT_FAILURE);
  }
  return maze[(row * maze_width) + col];
}


//  Sets the character at the given row and column to the replacement
//  character.  Replacement of the start and end signifiers and walls 
//  (#'s) will be prevented unless the maze is being initialized, in 
//  which case, it is allowed.
//
//  Since it calls maze_get_char first, this function will also cause 
//  program termination if passed a row or column that is out of bounds
void maze_set_char(int row, int col, char replacement) {
  char c = maze_get_char(row, col);
  if (!is_maze_being_initialized && (c == '#' || c == 'S' || c == 'E')) {
    return;
  }

  maze[(row * maze_width) + col] = replacement;
}


void maze_display(void) {
  for(int row = 0; row < maze_height; row++) {
    for(int col = 0; col < maze_width; col++) {
      printf("%c", maze_get_char(row, col));
    }
    printf("\n");
  }
  printf("\n");
}


///////////////////////////////////////////////////////////////////////////
// BEGIN: STUFF YOU DON'T NEED TO LOOK AT OR UNDERSTAND FOR THE PROJECT  //
///////////////////////////////////////////////////////////////////////////


// maze_init allocates the memory for the maze array based on width 
// and height, fills every square of the maze with walls, and then 
// calls carve() to remove walls in a way that creates valid maze paths
void maze_init(int width, int height, int seed) {
  maze_width = width;
  maze_height = height;

  maze = malloc(sizeof(*maze) * maze_width * maze_height);

  // Fill maze completely with walls
  for(int i = 0; i < maze_width * maze_height; i++) {
    maze[i] = '#';
  }

  is_maze_being_initialized = true;
  // Seed the random number generator, since carve() uses of random numbers
  srand(seed);
  // We always start carving the maze from row 1 column 1 to ensure
  // that we always have a valid start there and a valid end in the bottom
  // right hand corner
  carve(1, 1);

  maze_set_char(1, 1, 'S');
  maze_set_char(maze_height-2, maze_width-2, 'E');
  is_maze_being_initialized = false;
}

/*
  Starts at a given index and recursively carves toward every 
  direction in a randomized order. Recursion ends at a particular 
  location when the blocks in every possible direction have already 
  been carved.
*/
static void carve(int row, int col) {
  maze_set_char(row, col, ' ');

  int directions[4] = {NORTH, EAST, SOUTH, WEST};
  shuffle(directions);

  for (int i=0; i < 4; i++) {
    // Find the appropriate offsets for the row and column to move in the
    // current direction

    int row_offset = 0;
    int col_offset = 0;
    int current_direction = directions[i];
    // Only one offset will be changed and the other will remain zero
    if (current_direction == NORTH) {
      row_offset = -1;
    }
    else if (current_direction == SOUTH) {
      row_offset = +1;
    }
    else if (current_direction == WEST) {
      col_offset = -1;
    }
    else {
      col_offset = +1;
    }

    // Find the row and col for the spot *two* squares forward in 
	// the current direction
    int next_row = row + (2 * row_offset);
    int next_col = col + (2 * col_offset);

    bool is_in_bounds = ((0 <= next_row && next_row < maze_height) &&
                         (0 <= next_col && next_col < maze_width));

    // If that spot is in bounds and hasn't already been carved out...
    if (is_in_bounds && maze_get_char(next_row, next_col) == '#') {
      // carve out the wall between the current spot from and the next spot
      maze_set_char(row + row_offset, col + col_offset, ' ');
      // and then continue carving from the new spot
      carve(next_row, next_col);
    }
  }
}


static void shuffle(int directions[4]) {
  for(int i = 0; i < 4; i++) {
    // Random number between 0 and 3
    int random_index = rand() % 4;
    // Swap the thing at the random index and the current index (i)
    int temp = directions[random_index];
    directions[random_index] = directions[i];
    directions[i] = temp;
  }
}
