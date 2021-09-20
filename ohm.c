// Ohm's Law Resistance Calculator Program
// Author: Anton Hibl

// Ohm's Law Algorithm to Calculate Resistance
// R = V / I

// Including Header Files
#include <stdio.h>
#include <stdlib.h>

// Initialize Constants
const int TITLE_WIDTH = 50;
const char HEAVY_LINE = '=';
const char THIN_LINE = '-';

// Define function to take double input's
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

// Define a function to print x amount of Characters
void print_characters( int numChars, char outputChar )
   {
    // check for remaining characters to print
    if( numChars > 0 )
       {
        // print one character
        printf( "%c", outputChar );

        // recursively print the remaining characters
        print_characters( numChars - 1, outputChar );
       }
   }

//Initialize main program function
int main() {
	// Print program title
	printf( " Electrical Current Resistance Calculator Program\n" );
	print_characters( TITLE_WIDTH, HEAVY_LINE );
	printf( "\n\n" );

	// Initialize variables
	double voltage, current, resistance;

	// Take in user input for voltage and current
	voltage = promptForDouble("  Enter a value for voltage: ");
	printf( "\n" );
	current = promptForDouble("  Enter a value for current: ");
	printf( "\n");
	print_characters( TITLE_WIDTH, THIN_LINE );
	printf( "\n" );

	// Perform Calculations
	// Resistance = Voltage / Current
	resistance = ( voltage / current );
	
	// Return Inputs and Outputs
	printf( "Voltage    =  %f Volts\n", voltage );
	printf( "Current    =  %f milliAmps\n", current );
	printf( "Resistance =  %f Ohms\n", resistance );
	print_characters(TITLE_WIDTH, THIN_LINE);
	printf( "\n\n" );

	// Print End of Program
	printf( "END OF PROGRAM" );
	// Return 0
	return 0;
}
