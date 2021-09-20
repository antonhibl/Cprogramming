// Cylinder Volume Calculator
// Author: Anton Hibl

// Include header files
#include "Console_IO_Utility.h"
#include "StandardConstants.h"
#include <stdio.h>

// Definine Constants
// Pi
const double PI = 3.14159;

// Start the main function and program
int main() {
   
    // Initialize Variables
    double input_diameter, input_height, volume; 

    // Print program title
    printf("Cylinder Volume Calculator\n---------------------------\n\n");
    
    // Prompt for input variables
    input_diameter = promptForDouble("Enter the Diameter: ");
    input_height = promptForDouble("Enter the Height: ");
    
    //Calculations
    double radius = ( input_diameter / 2 );
    double circle = ( PI * ( radius * radius ));
    volume = ( circle * input_height );

    // Print important data as output
    printf("Diameter = %f\n\n", input_diameter);
    printf("Height = %f\n\n", input_height);
    printString("Volume = ");
    printDouble(volume, 2);
    printf("\n\n");
    // Print end Program
    printf("PROGRAM END");
    // return 0
    return 0;
}

