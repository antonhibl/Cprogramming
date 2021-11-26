// Right Square Pyramid Surface Area Calculator 
// Author: Anton Hibl

// Include header files
#include "StandardConstants.h"
#include "Console_IO_Utility.h"
#include <math.h>

// Initialize constants
const int TWO_ENDLINES = 2;
const int TITLE_WIDTH = 46;
const char HEAVY_LINE = '=';
const char THIN_LINE = '-';
const char PIPE_SPACE[] =  "| ";
const char SPACE_PIPE[]  =" |";
const int TABLE_WIDTH = 33;
const int LEFT_NAME_WIDTH = 12;
const int RIGHT_VALUE_WIDTH = 16;

// Main function
int main() {
	// Initialize program
	  // Print title
	    // functions: printString, printEndline
	printString( " Right Square Pyramid Surface Area Calculator" );
	printEndline();
	  // Print heavy line underneath the title
	    // functions: printCharacters, printEndlines
	printCharacters( TITLE_WIDTH, HEAVY_LINE );
	printEndlines( TWO_ENDLINES );
	    
	    // Set program variables
	      // Initialize all variables as doubles or "floats"
	        // base_edge, height, base_sqrd,
	double base_edge, height, base_sqrd;
		// height_sqrd, composite_sqrt_fx, surface_area
	double height_sqrd, composite_sqrt_fx, surface_area;

	// Take user input's
	  // Take input for base_edge as a double
	    // functions: promptForDouble, printEndline
	 base_edge = promptForDouble( "Enter base  : " );
	 printEndline();

	  // Take input for height as a double
	    // functions: promptForDouble, printEndlines
	height = promptForDouble( "Enter height: " );
	printEndlines(TWO_ENDLINES);

	// Process Data
	  // Calculate base_sqrd
	base_sqrd = ( base_edge * base_edge );
	  // Calculate height_sqrd
        height_sqrd = ( height * height );
          // Calculate composite_sqrt_fx	
	    // functions: sqrt
	composite_sqrt_fx = ( sqrt(( base_sqrd / 4) + height_sqrd ));
	  // Calculate surface_area
	surface_area = ( base_sqrd + (2 * base_edge) * composite_sqrt_fx );

	// Return Inputs and Output(s)
	  // Create table
	  // functions: printCharacters, printEndline(s),
	   	     // printString, PrintDoubleJustified
	    // Create top edge of table
	printCharacters( TABLE_WIDTH, HEAVY_LINE );
	printEndline();
	    // Create table title line
	printCharacter( PIPE );
	printStringJustified( 
			"Pyramid Calculation Program",
			TABLE_WIDTH-TWO_ENDLINES, 
			"CENTER" 
			);
	printCharacter( PIPE );
	printEndline();
	    // Print divider line
	printCharacter( PIPE );
	printCharacters( TABLE_WIDTH-2, THIN_LINE );
	printCharacter( PIPE );
	printEndline();
	    // Print line corresponding to base_edge data
	printString( PIPE_SPACE );
	printStringJustified( "Base", LEFT_NAME_WIDTH, "LEFT" );
	printCharacter( COLON );
	printDoubleJustified( 
			base_edge, PRECISION, RIGHT_VALUE_WIDTH, "RIGHT" );
	printString( SPACE_PIPE );
	printEndline();
	    // Print divider line
	printCharacter( PIPE );
	printCharacters( TABLE_WIDTH-2, THIN_LINE );
	printCharacter( PIPE );
	printEndline();
	    // Print line corresponding to height data
	printString( PIPE_SPACE );
	printStringJustified( "Height", LEFT_NAME_WIDTH, "LEFT" );
	printCharacter( COLON );
	printDoubleJustified( 
			height, PRECISION, RIGHT_VALUE_WIDTH, "RIGHT" );
	printString( SPACE_PIPE );
	printEndline();
	    // Print divider line
	printCharacter( PIPE );
	printCharacters( TABLE_WIDTH-2, HEAVY_LINE );
	printCharacter( PIPE );
	printEndline();
	    // Print line corresponding to height data
	printString( PIPE_SPACE );
	printStringJustified( "Surface Area", LEFT_NAME_WIDTH, "LEFT" );
	printCharacter( COLON );
	printDoubleJustified( 
			surface_area, PRECISION, RIGHT_VALUE_WIDTH, "RIGHT" );
	printString( SPACE_PIPE );
	printEndline();
	    // Print bottom line of table
	printCharacters( TABLE_WIDTH, HEAVY_LINE );

	// Print end of program
	printEndlines(TWO_ENDLINES);
	printString("END OF PROGRAM.");
	
	// Return zero
	return 0;
}
