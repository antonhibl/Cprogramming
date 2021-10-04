// Jump the Five Encryptor Program
// author Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>

// Initialize Constants
const int TITLE_WIDTH = 33;
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
     // Print Title
    printf( " Jump the Five Encryptor Program\n" );
    printCharacters( TITLE_WIDTH, HEAVY_LINE);
    printf( "\n\n" );

     // Initialize Variables
     int count, num;

     for(count = 0; count <= 10; count++)
     {
         num = atoi(argv[count]);
	 if(num == 0)
	 {
             printf( "  5" );
	 }
	 if(num == 1)
	 {
	     printf( "  9" );
	 }
	 if(num == 2)
	 {
	     printf( "  8" );
	 }
	 if(num == 3)
	 {
	     printf( "  7" );
	 }
	 if(num == 4)
	 {
	     printf( "  6" );
	 }
	 if(num == 5)
	 {
	     printf( "  0" );
	 }
	 if(num == 6)
	 {
	     printf( "  4" );
	 }
	 if(num == 7)
	 {
	     printf( "  3" );
	 }
	 if(num == 8)
	 {
	     printf( "  2" );
	 }
	 if(num == 9)
	 {
	     printf( "  1" );
	 }
     }

    // End Program
    printf( "\n\n END OF PROGRAM" );

    // Return 0
    return 0;
}
