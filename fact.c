// Factorial C Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>

// Main Program
// argument 1 is the number being factorized
int main( int argc, char *argv[] )
{
	// If int was given
	if(argc == 2)
	{
		// Initialize local variables
		register int counter = 1;
		register long factorial = 1;
		register int N = atoi(argv[1]);

		// loop to N
		for(;counter <= N;counter++)
		{
			// multiply counter by factorial
			factorial = factorial * counter;
		}
		// Print out the result
		printf("The Factorial of %d is: %ld", N, factorial);
	}
	// otherwise no int given/too many args
	else
	{
		// print error statement
		printf("\nNo arguments given, terminating program.");
	}

	// exit the program
	printf("\nEND OF PROGRAM");

	fflush(stdout);

	return 0;
}
