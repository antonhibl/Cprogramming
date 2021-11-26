// Seconds Calculator Program
// Author: Anton Hibl

// include header files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Initialize Constants
const int TITLE_WIDTH = 40;
const char HEAVY_LINE = '=';
const char THIN_LINE = '-';
const int DAYS_IN_YEAR = 365;
const int DAYS_IN_WEEK = 7;
const int HOURS_IN_DAY = 24;
const int MINUTES_IN_HOUR = 60;
const int SECONDS_IN_MINUTE = 60;

// Function to take integers as inputs
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

// Function to print x characters
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

// Initialize the main program
int main() {
	// Print the program title
	printf( " Seconds Conversion Calculator Program\n" );
	printCharacters( TITLE_WIDTH, HEAVY_LINE );
	printf( "\n\n" );

	// Initialize the remaining variables
	int input_years, input_weeks, input_days, input_hours, input_minutes;
	int total_seconds;

	// Take User Inputs
	input_years = promptForInteger( "Enter the Number of Years: " );
	printf( "\n" );
	input_weeks = promptForInteger( "Enter the Number of Weeks: " );
	printf( "\n" );
	input_days = promptForInteger( " Enter the Number of Days: " );
	printf( "\n" );
	input_hours = promptForInteger( "Enter the Number of Hours: " );
	printf( "\n" );
	input_minutes = promptForInteger( "Enter the number of Minutes: "  );
	printf( "\n\n" );
	printCharacters( TITLE_WIDTH, THIN_LINE );
	printf( "\n\n" );

	// Perform Calculations
	total_seconds = ( input_years * DAYS_IN_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	total_seconds += ( input_weeks * DAYS_IN_WEEK * HOURS_IN_DAY * MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	total_seconds += ( input_days * HOURS_IN_DAY * MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	total_seconds += ( input_hours * MINUTES_IN_HOUR * SECONDS_IN_MINUTE );
	total_seconds += ( input_minutes * SECONDS_IN_MINUTE );
	
	// Return Inputs and Outputs
	printf( "There are %d Seconds in %d Years, %d Weeks, %d Days, %d Hours and %d Minutes\n\n",
			total_seconds, input_years, input_weeks, input_days, input_hours, input_minutes);
	
	// Print end of program
	printCharacters( TITLE_WIDTH, THIN_LINE );
	printf( "\n\nEND OF PROGRAM" );

	// return 0
	return 0;
}
