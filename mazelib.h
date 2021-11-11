#pragma once
#include <stdbool.h>


//-------Functions you SHOULD use in your runner.c file---------------
// Take a look in mazelib.c to see how they work and what they are for
char maze_get_char(int, int);
void maze_set_char(int, int, char);

//-Functions you may use for debugging, but not in your final submission-
void maze_display(void);

//-------------------Functions you should NOT use--------------------
void maze_init(int, int, int);
