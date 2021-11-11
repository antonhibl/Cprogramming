#pragma once

// Macro definitions

 // win tile
#define WIN_TILE 'E'

 // cardinal directions
#define NORTH 0
#define EAST 1
#define SOUTH 2
#define WEST 3

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
void runner_solve(void);

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
bool check_direction(int direction_flag, int row, int col);

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
bool check_win(int row, int col);

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
int get_best_move(int row, int col);

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
int look_towards(int direction, int row, int col);

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
int check_char(char tile_char);
