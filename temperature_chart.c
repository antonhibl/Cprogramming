// Temperature Chart Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Constants
const int TITLE_WIDTH = 27;
const char HEAVY_LINE = '=';

// Function Declarations
  // Print Characters
void printCharacters( int numChars, char outputChar )
   {
    // check for reminaing characters to print
    if( numChars > 0 )
       {
        // print one character
           // function: printf
        printf( "%c", outputChar );

        // (recursive) print remaining characters
           // function: printChars
        printCharacters( numChars - 1, outputChar );
       }
   }

// Main Program
int main(int argc, char* argv[])
{
    // Initialize program
     // Print title
    printf( " Temperature Chart Program\n" );
    printCharacters( TITLE_WIDTH, HEAVY_LINE );
    printf( "\n\n" );

     // Initialize variables
    double start_temp, stop_temp, step;
    double celsius;
    int temp;
     
    start_temp = atof(argv[1]);
    stop_temp = atof(argv[2]);
    step = atof(argv[3]);

    // Process Data
    for( temp = start_temp; temp < stop_temp; temp = temp + step )
    {
        celsius = (( temp - 32.0 ) * ( 5.0 / 9.0 ));
	printf( "%d     %f\n", temp, celsius );
    }
     
    // Print End of Progran
    printf( "\n\nEND OF PROGRAM" );
    
    // Return 0
    return 0;
}
