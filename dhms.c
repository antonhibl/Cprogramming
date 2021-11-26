// Time in Seconds Calculator Program
// Author: Anton Hibl

// include Header Files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Initialize Constants
const int DAYS_IN_YEAR = 365;
const int HOURS_IN_DAY = 24;
const int MINUTES_IN_HOUR = 60;
const int SECONDS_IN_MINUTE = 60;
const int TITLE_WIDTH = 36;
const char THIN_LINE = '-';
const char HEAVY_LINE = '=';

// Function to take integer input
int promptForInteger( const char *promptString )
   {
    // initialize variables
    int outInt;

    // print prompt string
    printf( "%s", promptString );

    // input integer
    scanf( "%d", &outInt );

    // return captured integer
    return outInt;
   }

// Function for printing x characters
void printCharacters( int numChars, char outputChar )
   {
    // check for reminaing characters to print
    if( numChars > 0 )
       {
        // print one character
        printf( "%c", outputChar );

        // recursively print remaining characters
        printCharacters( numChars - 1, outputChar );
       }
   }

// Initialize Main Program
int main() {
	// Print Program Title
	printf( " Time-in-Seconds Calculator Program\n" );
	printCharacters( TITLE_WIDTH, HEAVY_LINE );
	printf( "\n\n" );

	// Initialize Variables
	int years, days, hours, minutes;
	int secs_to_years, secs_to_days, secs_to_hours, secs_to_mins;
	int input_seconds, reduced_seconds;
	
	// Take input seconds
	input_seconds = promptForInteger("Enter the amount of seconds: ");

	// Clone Input Seconds for later use
	reduced_seconds = input_seconds;

	// Convert Seconds into Years using amount of seconds in a year
	years = ( DAYS_IN_YEAR * HOURS_IN_DAY 
			* MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	days = ( HOURS_IN_DAY * MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	hours = ( MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	minutes = SECONDS_IN_MINUTE;
	secs_to_years = (int)( reduced_seconds / years );
	reduced_seconds = ( reduced_seconds - (secs_to_years * years));
	secs_to_days = (int)( reduced_seconds / days );
	reduced_seconds = ( reduced_seconds - (secs_to_days * days));
	secs_to_hours = (int)( reduced_seconds / hours );
	reduced_seconds = ( reduced_seconds - (secs_to_hours * hours));
	secs_to_mins = (int)( reduced_seconds / minutes );
	reduced_seconds = ( reduced_seconds - ( secs_to_mins * minutes ));	
	// Print Inputs and Outputs
	printf( "\n\n" );
	printCharacters( TITLE_WIDTH, THIN_LINE );
	printf( "\n\n RESULTS\n\n" );
	printCharacters( TITLE_WIDTH, THIN_LINE );
	printf( "\n\n" );
	printf( "There are %d years, %d days, %d hours, %d minutes, and %d seconds in %d seconds",
		secs_to_years, secs_to_days, 
		secs_to_hours, secs_to_mins,
		reduced_seconds, input_seconds 
	      );	

	printf( "\n\n" );
	printCharacters( TITLE_WIDTH, THIN_LINE );
	// Print End of Program
	printf( "\n\nEND OF PROGRAM" );

	// return 0
	return 0;
}

