// Icosahedron Volume Calculator
// Author: Anton Hibl

// Include Header Files
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

// Formula for the Volume of an Icosahedron,
// where a is the length of an edge
// V = (5*a^3 × (3+√5))/12

// Initialize Constants
const int TITLE_WIDTH = 38;
const int HEADER_WIDTH = 10;
const char HEAVY_LINE = '=';
const char THIN_LINE = '-';

// Function to take Double as Input
double promptForDouble( const char *promptString )
   {
    // initialize variables
    double outDouble;

    // print prompt string
    printf( "%s", promptString );

    // get double value
    scanf( "%lf", &outDouble );

    // return captured double
    return outDouble;
   }

// Function to Print x Characters
void printCharacters( int numChars, char outputChar )
   {
    // check for reminaing characters to print
    if( numChars > 0 )
       {
        // print one character
        printf( "%c", outputChar );

        // recursively print the remaining characters
        printCharacters( numChars - 1, outputChar );
       }
   }


// Initialize the Main Program
int main() {
	// Print the Program Title
	printf( " Icosahedron Volume Calculator Program\n" );
	printCharacters( TITLE_WIDTH, HEAVY_LINE );
	printf( "\n\n" );

	// Initialize Variables
	double edge_length, volume, first_exp_sum, second_exp_sum;

	// Take Input
	edge_length = promptForDouble( "Enter the Edge Length: " );
	printf( "\n" );
	printCharacters( TITLE_WIDTH, THIN_LINE );

	// Perform Calculations
	first_exp_sum = ( 5 * ( edge_length * edge_length * edge_length ));
	second_exp_sum = ( 3 + sqrt(5) );
	volume = (( second_exp_sum * first_exp_sum ) / 12 );

	// Return Input & Outputs
	printf( "\n\n RESULTS:\n\n" );
	printCharacters( TITLE_WIDTH, THIN_LINE );
	printf( "\n\n Edge Length: %f cm\n", edge_length );
	printf( "      Volume: %f cm^3\n\n", volume );
	printCharacters( TITLE_WIDTH, THIN_LINE );
	printf( "\n" );

	// Print End of Program
	printf( "END OF PROGRAM" );
	
	// Return 0
	return 0;
}
