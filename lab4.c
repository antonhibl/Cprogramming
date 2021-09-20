// Quadratic Formula Root Calculator Program
// Author: Anton Hibl

// Quadratic Formula to Calculate Roots of Quadratic Functions
// (-b(+-)sqrt((b^2)-4*(a*c)))/(2*a)
// for an Eq. ax^2+bx+c=0

// Include Header Files
#include "Console_IO_Utility.h"
#include "StandardConstants.h"
#include <math.h>
#include <stdlib.h>

// Initialize Constants
const int TITLE_WIDTH = 44;
const int RESULT_WIDTH = 17;
const int TWO_ENDLINES = 2;
const char HEAVY_LINE = '=';
const char THIN_LINE = '-';
const char PIPE_SPACE[] = "| ";
const char SPACE_PIPE[] = " |";
const int TAB_RIGHT_WIDTH = 18;

// Initialize the main program
int main() {
	// Print the Program Title
	      // functions: printString, printEndline(s), printCharacters
	printString(" Quadratic Calculator Program");
	printEndline();
	printCharacters(TITLE_WIDTH, HEAVY_LINE);
	printEndlines(TWO_ENDLINES);

	// Initialize remaining variables
	      // a, b, c, and X, composite sqrt function var, denominator var
	int a, b, c, x;
	double ax_sum, bx_sum, final_val;

	// Prompt for values
	      // take inputs for a and b and c
	      // functions: promptForInteger and printEndline
	a = promptForInteger("Enter a value for a: ");
	printEndline();
	b = promptForInteger("Enter a value for b: ");
	printEndline();
	c = promptForInteger("Enter a value for c: ");
	printEndline();
	x = promptForInteger("Enter a value for x: ");
	printEndline();
	
	// Process Data Using the Quadratic Formula
	      // Calculate ax^2
	ax_sum = (a*(x*x));
	      // Calculate bx
	bx_sum = (b*x);
	      // calculate ax^2 + bx + c
	final_val = (ax_sum + bx_sum + c);

	// Return Inputs and Outputs
	      // Create Table with Title
	printCharacters(TITLE_WIDTH, HEAVY_LINE);
	printEndline();
	printCharacter(PIPE);
	printStringJustified(
			"Quadratic Calculator Program",
			TITLE_WIDTH-TWO_ENDLINES,
			"CENTER"
			);
	printCharacter(PIPE);
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);
	      // Return a val
	printEndline();
	printCharacter(PIPE);
	printString(" Coefficient A :");
	printIntegerJustified(a ,TITLE_WIDTH-TAB_RIGHT_WIDTH, "RIGHT");
	printCharacter(PIPE);
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);
	printEndline();
	      // Return b val
	printCharacter(PIPE);
	printString(" Coefficient B :");
	printIntegerJustified(b ,TITLE_WIDTH-TAB_RIGHT_WIDTH, "RIGHT");
	printCharacter(PIPE);
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);
	printEndline();
	      // Return c val
	printCharacter(PIPE);
	printString(" Coefficient C :");
	printIntegerJustified(c ,TITLE_WIDTH-TAB_RIGHT_WIDTH, "RIGHT");
	printCharacter(PIPE);
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);
	      
	      // Return x val
	printEndline();
	printCharacter(PIPE);
	printString(" Value X       :");
	printIntegerJustified(x ,TITLE_WIDTH-TAB_RIGHT_WIDTH, "RIGHT");
	printCharacter(PIPE);
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);

	      //Finish Table input section
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);
	printEndline();
	      // Return result
	printCharacter(PIPE);
	printString(" Result        :");
	printIntegerJustified(
			final_val,
			TITLE_WIDTH-TAB_RIGHT_WIDTH,
			"RIGHT");
	printCharacter(PIPE);
	printEndline();
	printCharacter(PIPE);
	printCharacters(TITLE_WIDTH-TWO_ENDLINES, THIN_LINE);
	printCharacter(PIPE);
	printEndline();

	// Print End of Program
	printString("END OF PROGRAM");

	// Return 0
	return 0;
}
