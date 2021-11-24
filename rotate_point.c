// Rotation Calculation Program
// author: Anton Hibl

// Header files
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "rotate_point.h"

// Main Program
int main(void)
{
	// Initialize local variables
	 // x-coord
	register struct coords *input_coords;
	 // degrees of rotation
	double rotation;
	
	// Print program title
	  // function: printf()
	printf(" Rotation Calculator Program\n");
	printf("=============================\n");

	// allocate input coordinate structure
	  // functions: malloc(), sizeof()
	input_coords = (struct coords *)malloc(sizeof(struct coords));

	// Prompt for user inputs
	 // x-coord
	  // function(s): printf(), scanf()
	printf("\nPlease enter an x-coordinate: ");
	scanf("%lf", &(input_coords->x));
	 // y-coord
	  // function(s): printf(), scanf()
	printf("\nPlease enter a y-coordinate: ");
	scanf("%lf", &(input_coords->y));
	 // degrees of rotation
	  // function(s): printf(), scanf()
	printf("\nPlease enter the number of degrees to rotate by: ");
	scanf("%lf", &rotation);
	
	// Perform rotation
	  // function: rotatePoints()
	rotatePoints(input_coords, rotation);

	// print results
	  // function: printf()
	printf("\nThe result is ( %lf , %lf )", (input_coords->x), (input_coords->y));

	// Free the structure in memory
	  // function: free()
	free(input_coords);

	// end program
	 // print end program
	  // function: printf() 
	printf("\n\n END OF PROGRAM.");

	 // Return success
	return 0;	
}

// Function Implementations
 // passing in the coordinate structure which holds two doubles inside
void rotatePoints(struct coords *inputCoords, double rotation_degrees)
{
	// Initialize local variables
	  // rotation, x, and y thetas
	register double x_theta = ((M_PI/180)*inputCoords->x);
	register double y_theta = ((M_PI/180)*inputCoords->y);
	register double rot_theta = ((M_PI/180)*rotation_degrees);
	
	// convert values from degrees to radians
	 // calculate x-new
	  // functions: sin(), cos() 
	register double x_new = (double)((x_theta * cos(rot_theta)) - (y_theta * sin(rot_theta)));
	 // calculate y-new
	  // functions: sin(), cos()
	register double y_new = (double)((x_theta * sin(rot_theta)) + (y_theta * cos(rot_theta)));

	// convert x and y back to degrees
	x_new  = x_new / (M_PI/180);
	y_new  = y_new / (M_PI/180);

	// reset coordinates in input structure
	inputCoords->x = x_new;
	inputCoords->y = y_new;
}
