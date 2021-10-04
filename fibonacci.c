// Fibonnaci Calculator Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Constant Declarations
const int TITLE_WIDTH = 30;
const char HEAVY_LINE = '=';

// Function Initializations
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
    // Initialize Program
      // Print Title
    printf( " Fibonacci Calculator Program\n" );
    printCharacters( TITLE_WIDTH, HEAVY_LINE );
    printf( "\n\n" );

      // Initialize Variables
        // n, nth_val
    double n, nth_val;
    double phi, gphi, phi_n, gphi_n;

      // Prompt User for Input
        // Enter the n value
    n = atoi( argv[1] );

    // Process Data
      // Calculate Phi
    phi = (( 1 + sqrt(5)) / 2 );
    gphi = (( 1 - sqrt(5)) / 2 );
    phi_n = ( pow( phi, n ));
    gphi_n = ( pow( gphi, n ));

      // Calculate nth term of the fibonacci sequence
    nth_val = (( phi_n - gphi_n ) / sqrt(5));
    
    // Return Output
    printf( "\nThe %fth value of the fibonacci sequence is: %f", n, nth_val);

    // Print End Program
    printf( "\n\nEND OF PROGRAM." );
    return 0;
}
