// Slope Intercept Calculator
// Author: Anton Hibl, 9-7-21

// Include relevant header files
#include "Console_IO_Utility.h"
#include <string.h>

// Setting Global Constants
const int TWO_ENDLINES = 2;
const int BOX_WIDTH = 37;
const int LEFT_PROMPT_WIDTH = 13;
const int VALUE_WIDTH = 6;
const int RIGHT_VALUE_WIDTH = 20;

const char HEAVY_LINE = '=';
const char THIN_LINE = '-';
const char PIPE_SPACE[] = "| ";
const char SPACE_PIPE[] = " |";

// Initializing main program
int main(){
	// Print Program Title using printString and printEndline statements
	printString("Slope/Intercept Calculator");
	printEndline();
	printCharacters(BOX_WIDTH-11, HEAVY_LINE);
	printEndlines(TWO_ENDLINES);

	// Initialize remaining variables as doubles
		// Input points
	double X1, X2, Y1, Y2;
		// Calculation Expressions
	double final_y, final_x, slope, b_val;

	// Take Inputs using promptForDouble statements
		// X1
	X1 = promptForDouble("Please enter a X1 point: ");
	printEndline();
		// X2
	X2 = promptForDouble("Please enter a X2 point: ");
	printEndline();
		// Y1
	Y1 = promptForDouble("Please enter a Y1 point: ");
	printEndline();
		// Y2
	Y2 = promptForDouble("Please enter a Y2 point: ");
        printEndline();	

	// Calculations// 1st Exp: Y2 - Y1, solves for y
	final_y = ( Y2 - Y1 );
		// 2nd Exp: X2 - X1, solves for x
	final_x = ( X2 - X1 );
		// m = 1st Exp/2nd Exp, solves for slope
	slope = ( final_y / final_x );
		// b = -(mx)+y, solves for y-intercept
	b_val = (Y1 - ( slope * X1 ));

	// Return outputs and relevant inputs in formatted table
	// functions: printCharacters, printEndline, printString, PrintStringJustified, and printDoubleJustified
		// INPUTS
		  // X1, X2, Y1, Y2
		// OUTPUTS
		  // y=mx+b
	printCharacters( BOX_WIDTH, HEAVY_LINE);
	printEndline();
	
	printString(PIPE_SPACE);
	printStringJustified(
			"Slope / Intercept Program",
			BOX_WIDTH-4, 
			"CENTER");
	printString(SPACE_PIPE);
	printEndline();

	printCharacter(PIPE);
	printCharacters( BOX_WIDTH-2, THIN_LINE );
	printCharacter(PIPE);
	printEndline();

	printString(PIPE_SPACE);
	printString("Point X1   :");
	printDoubleJustified( X1, PRECISION, BOX_WIDTH-16, "RIGHT");
	printString(SPACE_PIPE);
	printEndline();

	printCharacter(PIPE);
	printCharacters( BOX_WIDTH-2, THIN_LINE );
	printCharacter(PIPE);
	printEndline();

	printString(PIPE_SPACE);
	printString("Point Y1   :");
	printDoubleJustified( Y1, PRECISION, BOX_WIDTH-16, "RIGHT");
	printString(SPACE_PIPE);
	printEndline();

	printCharacter(PIPE);
	printCharacters( BOX_WIDTH-2, THIN_LINE );
	printCharacter(PIPE);
	printEndline();

	printString(PIPE_SPACE);
	printString("Point X2   :");
	printDoubleJustified( X2, PRECISION, BOX_WIDTH-16, "RIGHT");
	printString(SPACE_PIPE);
	printEndline();

	printCharacter(PIPE);
	printCharacters( BOX_WIDTH-2, THIN_LINE );
	printCharacter(PIPE);
	printEndline();

	printString(PIPE_SPACE);
	printString("Point Y2   :");
	printDoubleJustified( Y2, PRECISION, BOX_WIDTH-16, "RIGHT");
	printString(SPACE_PIPE);
	printEndline();

	printCharacter(PIPE);
	printCharacters( BOX_WIDTH-2, THIN_LINE );
	printCharacter(PIPE);
	printEndline();

	printString(PIPE_SPACE);
	printString("Point Slope: Y =");
        printDoubleJustified( slope, PRECISION, VALUE_WIDTH, "RIGHT");
	printString("  X +");
	printDoubleJustified( b_val, PRECISION, VALUE_WIDTH, "RIGHT");
	printString(SPACE_PIPE);
	printEndline();

	printCharacters( BOX_WIDTH, HEAVY_LINE);
	printEndline();

	// Print End of program
	printString("END OF PROGRAM.");
	// Return 0
	return 0;
}
