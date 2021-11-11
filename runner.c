// Maze Solving Program
// author: Anton Hibl
// classmate: David Knight

/* David's Comments:

*/

/* My Comments to David:

*/

#include <stdio.h>
#include <stdbool.h>
#include "mazelib.h"
#include "runner.h"

// Macro definitions
 // win tile
#define WIN_TILE 'E'
 // cardinal directions
#define NORTH 0
#define EAST 1
#define SOUTH 2
#define WEST 3

/*
	Name: checkDirection
	Process: checks a direction and returns a true if can move 
			 that direction, i.e. there is no wall.
	Method Input: int direction flag, int row index, int column index
	Method Output(parameters): none
	Method Output(returned): bool success
	Device Input: none
	Device Output: none
	Dependencies: maze_get_char
*/
bool check_direction(int direction_flag, int row, int col)
{
	// Initialize local variables
	 // success flag
	bool success = false;

	// checks if direction is north and the corresponding tile isn't a wall
	  // function: maze_get_char()
	if(direction_flag == NORTH && maze_get_char( row-1, col ) != '#')
	{
		// set success flag
		success = true;
	}
	// checks if direction is east and the corresponding tile isn't a wall
	  // function: maze_get_char()
	if(direction_flag == EAST && maze_get_char( row, col+1 ) != '#')
	{
		// set success flag
		success = true;
	}
	// checks if direction is south and the corresponding tile isn't a wall
	  // function: maze_get_char()
	if(direction_flag == SOUTH && maze_get_char( row+1, col ) != '#')
	{
		// set success flag
		success = true;
	}
	// checks if direction is west and the corresponding tile isn't a wall
	  // function: maze_get_char()
	if(direction_flag == WEST && maze_get_char( row, col-1 ) != '#')
	{
		// set success flag
		success = true;
	}

	// return success flag
	return success;
}

/*
   Name: check_char
   Process: Checks the character input and returns an integer
   Method Input: character read from a tile
   Method Output(parameters): none
   Method Output(returned): int encoded_tile_value
   Device Input: none
   Device Output: none
   Dependencies: none
*/
int check_char(char tile_char)
{
	// Initialize local variables
	  // encoded tile value
	int encode_val;

	// set encode value to 5 as default
	encode_val = 5;

	// if tile character is a space character
	if(tile_char==' ')
	{
		// set the encode value to 0
		encode_val = 0;
	}
	// if tile character is a period character
	if(tile_char=='.')
	{
		// set the encode value to 1
		encode_val = 1;
	}
	// if tile character is a lowercase o
	if(tile_char=='o')
	{
		// set the encode value to 2
		encode_val = 2;
	}
	// if tile character is an uppercase O
	if(tile_char=='O')
	{
		// set the encode value to 3
		encode_val = 3;
	}
	// if tile character is an @ symbol
	if(tile_char=='@')
	{
		// set the encode value to 4
		encode_val = 4;
	}
	// if tile character is a wall character
	if(tile_char=='#')
	{
		// set the encode value to 5
		encode_val = 5;
	}
	// if tile char is win character
	if(tile_char=='E')
	{
		// set encode value to 6
		encode_val = 6;
	}

	// return the encoded value
	return encode_val;
}

/*
   Name: look_towards
   Process: looks in a given direction and returns a value, 0-5, 
			representing the tiles character value 
   Method Input: int direction, int row, int column
   Method Output(parameters): none
   Method Output(returned): int tile_value
   Device Input: none
   Device Output: none
   Dependencies: maze_get_char
*/
int look_towards(int direction, int row, int col)
{
	// Initialize local variables
	 // forward character
	char forward_char;
	 // forward tile value
	int tile_value;

	// check which direction is given
	 // if north
	if(direction==NORTH)
	{
		// set the forward value north
		  // function: maze_get_char()
		forward_char = maze_get_char(row-1, col);
		// get tile_value
		  // function: check_char()
		tile_value = check_char(forward_char);
	}
	 // if east
	if(direction==EAST)
	{
		// set the forward value east
		  // function: maze_get_char()
		forward_char = maze_get_char(row, col+1);
		// get tile_value
		  // function: check_char()
		tile_value = check_char(forward_char);
	}
	 // if south
	if(direction==SOUTH)
	{
		// set the forward value south
		  // function: maze_get_char()
		forward_char = maze_get_char(row+1, col);
		// get tile_value
		  // function: check_char()
		tile_value = check_char(forward_char);
	}
	 // if west
	if(direction==WEST)
	{
		// set the forward value north
		  // function: maze_get_char()
		forward_char = maze_get_char(row, col-1);
		// get tile_value
		  // function: check_char()
		tile_value = check_char(forward_char);
	}

	// return the tile value
	return tile_value;
}

/*
	Name: get_best_move
	Process: check around the runner and returns the direction value
			 of the best possible move w/ order: E,S,N,W
	Method Input: int direction, int row, int column
	Method Output(parameters): none
    Method Output(returned): the direction value of the best move
    Device Input: none
    Device Output: none
    Dependencies: look_towards
*/
int get_best_move(int row, int col)
{
	// Initialize local variables
	 // tile values
	int east_tile, south_tile, north_tile, west_tile;
	 // best choice value
	int best_choice;
	 // x for indexing
	int x;
	 // best move flag
	bool best_flag;
	
	// set best flag to false by default
	best_flag = false;

	// get value in all directions
	 // look east
	  // function: look_towards()
	east_tile = look_towards(EAST, row, col);
	 // look south
	  // function: look_towards()
	south_tile = look_towards(SOUTH, row, col);
	 // look north
	  // function: look_towards()
	north_tile = look_towards(NORTH, row, col);
	 // look west
	  // function: look_towards()
	west_tile = look_towards(WEST, row, col);
	
	// compare tiles surrounding runner
	  // set best_choice to the lowest value tile w/ order:
	   // east, south, north, west
	// whil best flag isn't set
	while(!best_flag)
	{
		// loop from 4 down to 0 with steps of 1, inclusive
		for(x=4;x>=0;x-=1)
		{
			// if west tile is equal to the loop index
			if(west_tile==x)
			{
				// set best choice to east
				best_choice = WEST;
				// set best flag
				best_flag = true;
			}

			// if north tile is equal to the loop index
			if(north_tile==x)
			{
				// set best choice to south
				best_choice = NORTH;
				// set best flag
				best_flag = true;
			}
					
			// if south tile is equal to the loop index
			if(south_tile==x)
			{
				// set best choice to north
				best_choice = SOUTH;
				// set best flag
				best_flag = true;
			}

			// if east tile is equal to the loop index
			if(east_tile==x)
			{
				// set best choice to west
				best_choice = EAST;
				// set best flag
				best_flag = true;
			}
		}

		// If any of the surrounding tiles is the win character
		 // check east
		if(east_tile==6)
			// set best choice east
			best_choice = EAST;
		 // check south
		if(south_tile==6)
			// set best choice south
			best_choice = SOUTH;
		 // check north
		if(north_tile==6)
			// set best choice north
			best_choice = NORTH;
		 // check west
		if(west_tile==6)
			// set best choice west
			best_choice = WEST;
	}

	// return direction of best choice
	return best_choice;
}

/*
	Name: check_win
	Process: checks game won status based on current tile character
	Method Input: int row, int column
	Method Output(parameters): none
	Method Output(returned): bool success
	Device Input: none
	Device Output: none
	Dependencies: maze_get_char
*/
bool check_win(int row, int col)
{
	// Initialize local variables
	 // current tile character
	char current_tile; 
	 // success flag
	bool success;

	// Initialize success to false as default
	success = false;

	// set current tile character
	  // function: maze_get_char()
	current_tile = maze_get_char(row, col);

	// If current tile is the win tile
	if(current_tile == WIN_TILE)
		// set success flag
		success = true;

	// return success
	return success;
}

/*
    Name: runner_solve
    Process: solves a given randoml maze by "running" around the maze
    Method Input: none
    Method Output(parameters): none
    Method Output(returned): none
    Device Input: none
    Device Output: displays steps taken, the number of steps, and the 
			   final solved maze
    Dependencies: maze_get_char, maze_set_char, check_win, 
			  check_direction, check_better_options
*/
void runner_solve(void) {
  // initialize local variables
    // step count starts at 0
  int step_count = 0;
	// current row index begins at 1
  static int row = 1;
	// current column index begins at 1
  static int col = 1;
    // current direction begins facing east
  static int direction = EAST;
    // Win flag starts out unset
  bool win_flag = false;
    // current character
  char current_char;
    // moved flag starts out unset
  bool moved_flag = false;
    // best move direction
  int best_move;

  // while the win flag is not set
  while(!win_flag)
  {
	  // get the best move possible
	    // function: get_best_move()
	  best_move = get_best_move(row, col);

	  // move forward directionally
	   // if best move is east
      if(best_move == EAST)
	  {
	      // move east
		  // increment column index
		  col+=1;
		  // set move flag
		  moved_flag = true;
	  }

	  // if best move is south
	  if(best_move == SOUTH)
	  {
		  // move south
		  // increment row index
		  row+=1;
		  // set move flag
		  moved_flag = true;
	  }

	  // if best move is north
	  if(best_move == NORTH)
	  {
		  // move north
		  // decrement row index
		  row-=1;
		  // set move flag
		  moved_flag = true;
	  }

	  // if best move is west
	  if(best_move == WEST)
	  {
		  // move west
		  // decrement column index
		  col-=1;
		  // set move flag
		  moved_flag = true;
	  }

      // if moved flag is set
	  if(moved_flag)
	  {
		  // reset current char
		    // function: maze_get_char()
		  current_char = maze_get_char(row, col);

		  // if current char is a space char
		    // function: check_char()
		  if(check_char(current_char) == 0)
		  {
		      // assign to period character
			    // function: maze_set_char()	
			  maze_set_char(row,col,'.');
		  }

		  // if period char
		    // function: check_char()
		  if(check_char(current_char) == 1)
		  {
			  // assign to lowercase o character
			    // function: maze_set_char()	
			  maze_set_char(row,col,'o');
		  }

		  // if lowercase o char
		    // function: check_char()
		  if(check_char(current_char) == 2)
		  {
			  // assign to uppercase O character
			    // function: maze_set_char()	
			  maze_set_char(row,col,'O');
		  }

	 	  // if uppercase O char
		    // function: check_char()
		  if(check_char(current_char) == 3)
		  {
			  // assign to @ character
			    // function: maze_set_char()	
			  maze_set_char(row,col,'@');
		  }
	      // increment the steps taken count
	      step_count+=1;
	    }
	    // other wise didn't move
	    else
	    {
		    // increment direction by 1
		    direction+=1;
		    
			// ensure direction has not gone past the modulus
		    if(direction>WEST)
		        // assign direction to north accordingly
			    direction = NORTH;

		    // if we cannot move in the given direction
		      // function: check_direction()
		    if(!check_direction(direction, row, col))
			    // decrement to direction value by 2
		        direction-=2;

	        // if direction value has been placed at -1
		    if(direction == -1)
			    // assign to west according to modulus
			    direction = WEST;
			  
		    // if direction value has been placed at -2
		    if(direction == -2)
			    // assign to south according to modulus
			    direction = SOUTH;
	    }
		// set moved_flag back to false
		moved_flag = false;

	    // check if on winning tile and set win flag accordingly
	      // function: check_win()
	    win_flag = check_win(row, col);
	}	
    // print the final number of steps taken
	  // function: printf()
	printf("\n\n number of steps taken: %d\n\n", step_count);
}
