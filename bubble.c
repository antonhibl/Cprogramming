// Bubble Sort Demonstration Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <stdbool.h>
#include "selection.h"

// Constant Declarations

// Main Program
int main( int argc, char * argv[] )
{
	// Initialize local variables
	register struct data *dataFrame = (struct data*)malloc(sizeof(struct data));

	// Seed the random generator
	srand(time(NULL));

	// Check if correct args were given
	if(argc == 2)
	{
		// Print the title
		printf(u8" Bubble Sort Program\n");
		printf(u8"=====================\n");

		// set size
		const int size = atoi(argv[1]);

		// create data dynamically
		dataFrame = createData(dataFrame, size);

		// fill the data
		dataFrame = fillData(dataFrame, size);

		// Display the data
		printf(u8"initial data:\n");
		displayData(dataFrame, size);
		
		// Sort the data
		dataFrame = sortData(dataFrame, size);
		
		// Display the sorted data
		printf(u8"sorted data:\n");
		displayData(dataFrame, size+1);

		// clear the data
		if(clearData(dataFrame, size))
		{
			printf(u8"data cleared succesfully\n\n");
		}
	}
	// display end of program
	printf(u8"END OF PROGRAM\n");
	// return success
	return 0;
}

// Function Implementations
void displayData(struct data *dataFrame, int size)
{
	register int counter;

	// loop to size
	for(counter=0;counter<size;counter++)
	{
		// print the node data
		printf(u8" %c", dataFrame->char_data);
		// move to next node
		dataFrame = dataFrame->next_node;
	}
	printf(u8"\n");
}

struct data *createData(struct data *headNode, int size)
{
	// Initialize local variables
      // loop counter
    register int counter;
      // temporary node variable
    register struct data *tempNode;

    // set temp to start of the data
    tempNode = headNode;

    // Loop through data
    for(counter = 0;counter<size;counter++)
    {
        // allocate another node in memory
          // function: malloc(), sizeof()
        headNode->next_node = (struct data*)malloc(sizeof(struct data));
        // Move to the next node
        headNode = headNode->next_node;
    }
    // reset head to data start
    headNode = tempNode;

    // return the original data head
    return headNode;
}

char getCharBetween(char lowLimit, char highLimit)
{
	// Initialize a variable for the char chosen and a sub expression
	register char char_between;
	register int range;

	// create a random # within the range and cast it to a character
	  // function: rand()
	range = ((int)highLimit-(int)lowLimit+1);
	char_between = (char)((rand()%(range))+lowLimit);

	// return the number
	return char_between;
}


struct data *fillData(struct data *dataFrame, int size)
{
	// Initialize local variables
	register int counter;
	register struct data *temp = dataFrame;
	
	// loop through node to size
	for(counter=0;counter<size;counter++)
	{
		// fill node data with a random value
		dataFrame->char_data = getCharBetween(97, 122);
		// move to next node
		dataFrame = dataFrame->next_node;
	}

	return temp;
}

int findLowestValue(struct data *headPtr)
{
	// initialize local variables
	 // lowest value to return
	register int lowestVal = (int)headPtr->char_data;
	// loop through list until at empty node
	while(headPtr != NULL)
	{
	// if the current indexed node's data is less than the lowest value
		if(headPtr->char_data < lowestVal)
			// set lowest value to node's data
			lowestVal = (int)headPtr->char_data;
		// move to next node in list
		headPtr = headPtr->next_node;
	}

	// return the lowest value in the list
	return lowestVal;
}

struct data *sortData(struct data *headPtr, int size)
{
	// Initialize local variables
	struct data *orig = headPtr;
	int count1, count2;
	struct data *temp;
	char tempchar;

	// outer loop
	for(count1=0;count1<size;count1++)
	{
		headPtr = orig;
		// Inner loop
		for(count2=0;count2 < size-count1-1;count2++)
		{
			// set temp ahead
			if(headPtr->next_node != NULL)
			{
				temp = headPtr->next_node;
				// check if less than current node
				if(temp->char_data < headPtr->char_data)
				{
					// swap the nodes
					tempchar = headPtr->char_data;
					headPtr->char_data = temp->char_data;
					temp->char_data = tempchar;
				}
				// move to next node
				headPtr = headPtr->next_node;
			}
		}
	}
	return orig;
}

bool clearData(struct data *headNode, int size)
{
	 // Initialize local variables
      // loop counter
    register int counter;
      // boolean success flag initialized to false
    register bool success = false;
      // temporary node variable
    register struct data *tempNode;

    // loop through data
    for(counter = 0;counter<size;counter++)
    {
        // set temp at head
        tempNode = headNode;

        // Move to next node
        headNode = headNode->next_node;

        // free the node
          // function: free()
        free(tempNode);

        // set success
        success = true;
    }
    // return the success
    return success;
}
