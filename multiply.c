/* Program Information
Program prompts user for two multiplication values and returns a product
Program uses Four Step Programming Process
*/

// header files
#include "Console_IO_Utility.h"
#include "StandardConstants.h"

// global constants
const int TWO_ENDLINES = 2;
const int BOX_WIDTH = 27;
const int LEFT_PROMPT_WIDTH = 13;
const int VALUE_WIDTH = 6;
const int RIGHT_VALUE_WIDTH = 8;

const char HEAVY_LINE = '=';
const char THIN_LINE = '-';
const char PIPE_SPACE[] = "| ";
const char SPACE_PIPE[] = " |";

// prototypes
   // none

// main program
int main()
   {
       // Print the program's title
             // Using printStringJustified, printEndline(s),
	     // and printCharacters
           printStringJustified(
			   "Multiplication Program", BOX_WIDTH, "CENTER" );
	   printEndline();
	   printCharacters( BOX_WIDTH-5, HEAVY_LINE );
	   printEndlines(TWO_ENDLINES);

	   // Initialize variables for Multiplicand,
	   //           Multiplier, and the Product
           double multiplicand, multiplier, product;

	   // Prompt for input values for Multiplicand and Multiplier
	         // using promptForDouble assignment statements and 
		 // printNewline(s) to transition lines when needed.
           multiplicand = promptForDouble("Enter the multiplicand : ");
	   printEndline();
	   multiplier = promptForDouble("Enter the multiplier   : ");
	   printEndlines(TWO_ENDLINES);

	   // Calculate the product
	   product = ( multiplicand * multiplier );

	   // Create and fill table using I/Os and constants
	         // Using printCharacter(s), printStringJustified,
		 // printDoubleJustified, and printEndline(s)
	   printCharacters( BOX_WIDTH, HEAVY_LINE);
	   printEndline();

	   printCharacter(PIPE);
	   printStringJustified(
			   "Multiplier Program", BOX_WIDTH-2, "CENTER");
	   printCharacter(PIPE);
	   printEndline();

	   printCharacter(PIPE);
	   printCharacters(BOX_WIDTH-2, THIN_LINE);
	   printCharacter(PIPE);
	   printEndline();

	   printString(PIPE_SPACE);
	   printStringJustified(
			   "Multiplicand :", LEFT_PROMPT_WIDTH, "LEFT");
	   printDoubleJustified(
			   multiplicand, PRECISION,
			   RIGHT_VALUE_WIDTH+1, "RIGHT");
	   printString(SPACE_PIPE);
	   printEndline();

           printCharacter(PIPE);
	   printCharacters(BOX_WIDTH-2, THIN_LINE);
	   printCharacter(PIPE);
	   printEndline();

	   printString(PIPE_SPACE);
	   printStringJustified(
			   "Multiplier   :", LEFT_PROMPT_WIDTH, "LEFT");
	   printDoubleJustified(
			   multiplier, PRECISION,
			   RIGHT_VALUE_WIDTH+1, "RIGHT");
	   printString(SPACE_PIPE);
	   printEndline();

           printCharacter(PIPE);
	   printCharacters(BOX_WIDTH-2, THIN_LINE);
	   printCharacter(PIPE);
	   printEndline();

	   printString(PIPE_SPACE);
	   printStringJustified(
			   "Product      :", LEFT_PROMPT_WIDTH, "LEFT");
	   printDoubleJustified(
			   product, PRECISION,
			   RIGHT_VALUE_WIDTH+1, "RIGHT");
	   printString(SPACE_PIPE);
	   printEndline();

	   printCharacters( BOX_WIDTH, HEAVY_LINE);
	   printEndlines(2);

	   // Signal end of program
	   printString("END OF PROGRAM");

       // return program success
       return 0;
   }


// supporting functions
   // none




