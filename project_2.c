// Electrical Coil Inductance Calculator
// Written by Anton Hibl, September 2nd, 2021

// Include Relevant Header Files
#include "Console_IO_Utility.h"
#include "StandardConstants.h"

// Set constants
      // Inductance Constant
const double INDUCTANCE = 1.26e-6;
      // Pi
const double PI = 3.141593;

// initialize the main program
int main(){
    // Show the Program Title with printString and printEndline(s)
    printEndline();
    printString("Electrical Coil Inductance Calculator");
    printEndline();
    printString("========================================");
    printEndlines(2);

    // initialize remaining variables
          // Permeability of the Core
	  // Number of Turns in the Coil
    double input_core_permeability, input_coil_turns;
	  // Radius of the Coil
	  // Length of the Coil
    double input_coil_radius, input_coil_length;
          // Expression Sums: coil area 1st, fraction with area 2nd,
	  //                  fraction times permeability 3rd
    double coil_area, fraction, fraction_x_permeability;
          // Final Expression & Result: Electrical Coil inductance
    double electrical_coil_inductance;

    // Take user input's using promptForDouble statements
          // Core Permeability
    input_core_permeability = promptForDouble(
		    "Enter the Permeability of the Core: ");
    printEndline();

          // Coil Turns
    input_coil_turns = promptForDouble(
		    "    Enter the Number of Coil Turns: ");
    printEndline();

          // Coil Radius
    input_coil_radius = promptForDouble(
		    "           Enter the Coil's Radius: ");
    printEndline();

          // Coil Length
    input_coil_length = promptForDouble(
		    "           Enter the Coil's Length: ");
    printEndlines(2);

    // Calculations
          // 1st Expression: Area of Coil Cross-Section (Area of a Circle)
    coil_area = ( PI * ( input_coil_radius * input_coil_radius ));
	  // 2nd Expression: fraction of (complete_revolutions*area)/length
    fraction = ((( input_coil_turns * input_coil_turns ) * coil_area )
		    / input_coil_length );
	  // 3rd Expression: Multiply by the Permeability of the Coil's Core
    fraction_x_permeability = ( fraction * input_core_permeability );
	  // 4th Expression: Multiply by Inductance Constant
    electrical_coil_inductance = ( fraction_x_permeability * INDUCTANCE );

    // Return input + results
    // Utilizing printString, printDouble, printEndline statements
          // Return Original Inputs: core permeability, coil turns,
	  // 			     coil radius, coil length
    printString("RESULTS");   // Section Title to indicate results ar ebeing returned
    printEndline();
    printString("=========");
    printEndlines(2);
    printString("  Core Permeability: ");
    printDouble(input_core_permeability, 4);
    printString(" μr");
    printEndline();
    printString("    # of Coil Turns: ");
    printDouble(input_coil_turns, 4);
    printString(" turns");
    printEndline();
    printString("        Coil Radius: ");
    printDouble(input_coil_radius, 4);
    printString(" mm");
    printEndline();
    printString("        Coil Length: ");
    printDouble(input_coil_length, 4);
    printString("  m");
    printEndline();
          // Return Calculated Result: The Electrical Coil's Inductance
    printString("    Coil Inductance: ");
    printDouble(electrical_coil_inductance, 8);
    printString(" μh (microhenries)");
    printEndlines(2);

    // Print End of Program
    printString("END OF PROGRAM.");

    // Return 0
    return 0;	  
}
