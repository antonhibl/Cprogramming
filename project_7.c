// Numerical File Data Analysis Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "File_Input_Utility.h"
#include "Console_IO_Utility.h"
#include "File_Output_Utility.h"

// Global Constants
char COLON_SPACE[] = ": ";
const int MIN_RAND_COUNT = 25;
const int MAX_RAND_COUNT = 75;
const int MIN_RAND_LIMIT = 10;
const int MAX_RAND_LIMIT = 99;
const int VALUES_IN_ONE_LINE = 10;
const int DISPLAY_STR_WIDTH = 42;
const char COMMA_SPACE[] = ", ";
const int TWO_END_LINES = 2;
const char UPPER_YES = 'Y';
const char LOWER_YES = 'y';
const char UPPER_NO = 'N';
const char LOWER_NO = 'n';

// Function Prototypes
void displayResults(int count, int sum, int smallest_val, 
		                   int largest_val, double average);
void downloadRandomValues(const char filename[]);
double findAverage(int sum, int count);
int findLargestValue(const int num_array[MAX_RAND_COUNT], int count);
int findSmallestValue(const int num_array[MAX_RAND_COUNT], int count);
int getListSum(const int num_array[MAX_RAND_COUNT], int count);
int getRandBetween(int low_limit, int high_limit);
void printTitle();
int uploadData(const char * filename, int num_array[MAX_RAND_COUNT]);

// Main Program
int main()
{
  // Set seed for entropy
  srand(time(0));
  
  // Initialize local variables
  char input_filename[ MAX_STR_LEN ];
  char genrand;
  int count, sum, min_value, max_value;
  double average;
  int num_array[MAX_RAND_COUNT];

  // Print title
  printTitle();

  // Take user input(s)
    // Input File
  promptForString("Enter the filename: ", input_filename);

    // Generate Random File, Y/N
  genrand = promptForCharacter("Generate random file (Y/N)?: ");
  printEndline();

  if(genrand == UPPER_YES || genrand == LOWER_YES)
  {
	  downloadRandomValues(input_filename);
	  count = uploadData( input_filename, num_array);
  }
  if(genrand == UPPER_NO || genrand == LOWER_NO)
  {
	  count = uploadData( input_filename, num_array );
  }
  if(genrand != UPPER_YES && genrand != UPPER_NO && 
		  genrand != LOWER_YES && genrand != LOWER_NO)
  {
	  printf("Incorrect Input!");
	  return 1;
  }
  

  // Process file data
  sum = getListSum(num_array, count);
  min_value = findSmallestValue(num_array, count);
  max_value = findLargestValue(num_array, count);
  average = findAverage(sum, count);

  // Return the results
    // add parameters
  displayResults(count, sum, min_value, max_value, average);

  // Print end of program
  printf("\n\nEND OF PROGRAM.");
  
  // Return Success
  return 0;
}

// Function Implementations and Specifications
/*
  Name: displayResults
  Process: accepts the appropriate data and displays all the 
  respective results ONLY if the values are all provided.
  Method Input: int count, int sum, int smallest_val, 
                int largest_val, double average
  Method Output(parameters): none
  Method Output(returned): none
  Device Input: none
  Device Output: Prints results to the console if they are found,
                 otherwise prints an error message.
  Dependencies: CONSOLE_IO_UTILITIES
*/
void displayResults(int count, int sum, int smallest_val, 
		                   int largest_val, double average)
{
	// Initialize flag variable
	bool error_flag;

	// If count exists
	if(count)
	{
		// Print count data
		printStringJustified("The number of values found is", 
									DISPLAY_STR_WIDTH, "LEFT");
		printString( COLON_SPACE );
		printInteger(count);
		printEndline();

		// Set error flag
		error_flag = false;
	}
	else
	{
		// Set error flag
		error_flag = true;
	}

	// If sum exists
	if(sum && !error_flag)
	{
		// Print sum data
		printStringJustified("The sum of the values found is", 
									DISPLAY_STR_WIDTH, "LEFT");
		printString( COLON_SPACE );
		printInteger(sum);
		printEndline();

		// Set error flag
		error_flag = false;
	}
	else
	{
		error_flag = true;
	}

	// If smallest value exists
	if(smallest_val && !error_flag)
	{
		// Print smallest value data
		printStringJustified("The smallest value of the numbers found is",
									DISPLAY_STR_WIDTH, "LEFT");
		printString( COLON_SPACE );
		printInteger(smallest_val);
		printEndline();

		// Set error flag
		error_flag = false;
	}
	else
	{
		error_flag = true;
	}
	
	// If largest value exists
	if(largest_val && !error_flag)
	{
		// Print largest value data
		printStringJustified("The largest value of the numbers found is", 
									DISPLAY_STR_WIDTH, "LEFT");
		printString( COLON_SPACE );
		printInteger(largest_val);
		printEndline();

		// Set error flag
		error_flag = false;
	}
	else
	{
		error_flag = true;
	}
	
	// if average exists
	if(average && !error_flag)
	{
		// Print average data
		printStringJustified("The average of the numbers found is", 
									DISPLAY_STR_WIDTH, "LEFT");
		printString( COLON_SPACE );
		printDouble(average, PRECISION);
		printEndline();

		// Set error flag
		error_flag = false;
	}
	else
	{
		error_flag = true;
	}
}

/*
  Name: downloadRandomValues
  Process: takes the filename, and downloads a random number of random
		   numbers as a comma-delimited list. 
  Method Input: const char * filename
  Method Output(parameters): none
  Method Output(returned): int * num_array
  Device Input:
  Device Output:
  Dependencies: 
*/
void downloadRandomValues(const char * filename)
{
	// Initialize local variables
	int random_count, random_num, index;

	// Generate random count value
	random_count = getRandBetween(MIN_RAND_COUNT, MAX_RAND_COUNT);

	// Open file for writing
	openOutputFile( filename );

	// Loop to random count
	for(index = 0; index < random_count; index++)
	{
		// Choose a random number
		random_num = getRandBetween(MIN_RAND_LIMIT, MAX_RAND_LIMIT);
		// Write the number to the file
		if(index%10 == 0)
		{
			writeEndlineToFile();
		}
		writeIntegerToFile( random_num );
		// Check if last value
		if(index != random_count-1)
		{
			// Write a comma to the file
			writeStringToFile( COMMA_SPACE );
		}
	}
    // Close file
	closeOutputFile( filename );
}

/*
  Name: findAverage
  Process: Takes the sum and the total count as inputs, it then 
           calculates and returns the average.
  Method Input: int sum, int count
  Method Output(parameters): none
  Method Output(returned): double average
  Device Input: none
  Device Output: none
  Dependencies: none
 */
double findAverage(int sum, int count)
{
	// Initialize local variables
	  // Average
	double average;

	// Calculate Average
	average = ( (double)sum / (double)count );

	// Return Average
	return average;
}

/*
  Name: findLargestValue
  Process: Takes a 1-dimensional array and the total count as inputs, 
           then finds the largest value in the array and returns it
  Method Input: const char * num_array, int count
  Method Output(parameters): none
  Method Output(returned): const char * num_array
  Device Input: none
  Device Output: none
  Dependencies: none
 */
int findLargestValue(const int num_array[MAX_RAND_COUNT], int count)
{
	// Initialize local variables
	int high_value, test_value, index_value;

	// Set first integer in array to the max
	high_value = *num_array;

	// Loop until end of array
	for( index_value = 1; index_value < count - 1; index_value++ )
	{
		// Get next value from array and assign it to the test value
		test_value = *(num_array + index_value);
		
		// Check if test value is greater than high value
		if( test_value >  high_value )
		{
			// If true, set max value to the test value
			high_value = test_value;
		}
	}
	// Return the highest value
	return high_value;
}

/*
  Name: findSmallestValue
  Process: Takes a 1-dimensional array and the total count as inputs, 
           then finds the smallest value in the array and returns it
  Method Input: const char * num_array, int count
  Method Output(parameters): none
  Method Output(returned): const int * num_array
  Device Input: none
  Device Output: none
  Dependencies: none
 */
int findSmallestValue(const int num_array[MAX_RAND_COUNT], int count)
{
	// Initialize local variables
	int low_value, test_value, index_value;

	// Set first integer in array to the minimum
	low_value = *num_array;

	// Loop until end of array
	for( index_value = 1; index_value < count - 1; index_value++ )
	{
		// Get next value from array and assign it to the test value
		test_value = *(num_array + index_value);
		
		// Check if test value is less than the low value
		if( test_value < low_value )
		{
			// If true, set low value to the test value
			low_value = test_value;
		}
	}
	// Return the highest value
	return low_value;
}

/*
  Name: getListSum
  Process: takes a 1-dimensional array and the total count as inputs, 
           then calculates and returns the sum of the values in the 
		   array 
  Method Input: const int * num_array, int count
  Method Output(parameters): none
  Method Output(returned): const int * num_array
  Device Input: none
  Device Output: none
  Dependencies: none
 */
int getListSum(const int num_array[MAX_RAND_COUNT], int count)
{
	// Initialize local variables
	int sum, index_value;

	// Start sum at 0
	sum = 0;

	// Loop until end of array
	for (index_value = 0; index_value < count; index_value++)
	{
		// Add current value to the sum
		sum += *(num_array+index_value);
	}
	// Return the sum
	return sum;
}

/*
  Name: getRandBetween
  Process: takes a low bound and a hgh bound as inputs, then calculates
           a random number between the 2 and returns that number
  Method Input: int low_value, int high_value
  Method Output(parameters): none
  Method Output(returned): a random integer
  Device Input: none
  Device Output: none
  Dependencies: none
*/
int getRandBetween( int low_value, int high_value )
{
	// initialize variables, set range and random value
    int range = high_value - low_value + 1;
    int rand_value = rand();

    // return calculated random value
    // between low/high, inclusive
    return rand_value % range + low_value;
}

/*
  Name: printTitle
  Process: Prints the program's title to the console
  Method Input: none
  Method Output(parameters): none
  Method Output(returned): none
  Device Input: none
  Device Output: prints the title to the console
  Dependencies: printf
 */
void printTitle()
{
	// Print the title
	printf("File Data Access Program\n");
    printf("========================\n");
}

/*
  Name: uploadData
  Process: takes a filename as input, loads through the numeric data
           and returns the number of values in the given file if 
		   values are found, otherwise returns 0
  Method Input: const char * filename
  Method Output(parameters): none
  Method Output(returned): int count, int * num_array
  Device Input: none
  Device Output: none
  Dependencies: File_Input_Utility.c, File_Output_Utility.c
 */
int uploadData(const char * filename, int num_array[MAX_RAND_COUNT])
{
	// Initialize local variables
	int counter;

	// Set counter to 1
	counter = 1;

	// Check if file is opened
	if(openInputFile( filename ))
	{
		// read 1st integer in the file into array
		*(num_array) = readIntegerFromFile();

		// Read comma following
		readCharacterFromFile();

		// Loop until end of file is reached
		while( !checkForEndOfInputFile() )
		{
			// Get consequent next value from file into array's next index
			*(num_array+counter) = readIntegerFromFile();
			// Increase the counter
			counter++;
			// Read consecutive comma following
			readCharacterFromFile();
		}
		// close the file stream
		closeInputFile( filename );
	}
	// return the count
	return counter;
}
