// Quadratic Formula Root Calculator Program
// Author: Anton Hibl

// Quadratic Formula to Calculate Roots of Quadratic Functions
// (-b(+-)sqrt((b^2)-4*(a*c)))/(2*a)
// for an Eq. ax^2+bx+c=0

// Include Header Files
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

// Initialize Constants
const int TITLE_WIDTH = 44;
const int TWO_ENDLINES = 2;
const char HEAVY_LINE = '=';
const char THIN_LINE = '-';
const char PIPE_SPACE[] = "| ";
const char SPACE_PIPE[] = " |";

// Define function for taking int input
int promptForInteger( const char *promptString )
   {
    // initialize variables
    int outInt;

    // print prompt string
       // function: printf
    printf( "%s", promptString );

    // input integer
       // function: scanf
    scanf( "%d", &outInt );

    // return captured integer
    return outInt;
   }

// Initialize the main program
int main() {
	// Print the Program Title
	printf("Quadratic Formula Roots Calculator Program\n");
	printf("=============================================\n\n");

	// Initialize remaining variables
	int a, b, c;
	double quad_square_root, quad_numerator_plus;
	double quad_numerator_minus, quad_denominator, root1, root2;

	// Prompt for values
	a = promptForInteger("Enter a value for a: ");
	printf ( "\n" );
	b = promptForInteger("Enter a value for b: ");
	printf ( "\n" );
	c = promptForInteger("Enter a value for c: ");
	printf ( "\n" );
	
	// Perform Calculations
	// Using Quadaratic Formula
	quad_square_root = sqrt(abs(( b * b ) - ( 4 * (a * c))));
	quad_numerator_plus = ( (-1*b) + quad_square_root );
	quad_numerator_minus = ( (-1*b) - quad_square_root );
	quad_denominator = ( 2 * a );
	root1 = ( quad_numerator_plus / quad_denominator );
	root2 = ( quad_numerator_minus / quad_denominator );	

	// Debug & Testing Code
	// printf(" TESTS:\n-------\n\n");
	// printf( " composite sqrt funct: %f\n", quad_square_root );
	// printf( "      added numerator: %f\n", quad_numerator_plus );
	// printf( " subtracted numerator: %f\n", quad_numerator_minus );
	// printf( "    denominator value: %f\n", quad_denominator );
	
	// Return Inputs and Outputs
	printf( " INPUT FUNCTION:\n-----------------\n\n" );
	printf( "%dx^2 + %dx + %d\n\n", a, b, c );
	printf( " ROOTS:\n--------\n\n" );
	printf( " x = %f\n", root1 );
	printf( " x = %f\n\n", root2 );


	// Print End of Program
	printf("END OF PROGRAM");

	// Return 0
	return 0;
}
