// Selection sort C program
// author: Anton Hibl

// Header files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <gsl/gsl_math.h>

// Main program
int main(void)
{
	// Initialize variables
	 // Hypotenuse
	 // X
	 // Y
	 // Z
	double hyp, x, y, z;

	// prompt for inputs
	printf("Enter an X value: ");
	scanf("%lf", &x);
	printf("Enter a Y value: ");
	scanf("%lf", &y);
	printf("Enter a Z value: ");
	scanf("%lf", &z);
		
	// Calculate hypotenuse
	hyp = gsl_hypot3(x, y, z);

	printf("\nThe Hypotenuse is: %lf", hyp);
	return 0;
}
