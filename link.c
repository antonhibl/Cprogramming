// Linked List Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include "link.h"
#include <unistd.h>
#include <stdbool.h>
#include <math.h>

// Main program
int main( int argc, char *argv[] )
{
	// Initialize local variables
	register int counter;

	// Print Program Title
	printf(" Linked List Overflow Demo\n===========================\n\n");

	// Check if an argument was given
	if(argc == 2)
	{
		// number of bytes to generate
		const int numBytes = atoi(argv[1]);

		// check if number of bytes is greater than 0
		if(numBytes > 0)
		{
			for(counter = 0;counter<numBytes;counter++)
			{
				// seed random
				srand(time(0));

				// Allocate the head node
				register struct node *byte = (struct node *)malloc(sizeof(struct node));
				
				// generate rest of Byte
				byte = generateByte(byte);

				// Fill Byte with random data
				//headNode->node_data = getRandBool();
				byte = mungeByte(byte);

				// Print the byte data
				printByte(byte);
				sleep(1);

				if(clearByte(byte))
				{
					continue;
				}
			}
			// Printing number of byte's generated
			printf("Number of bytes generated: %d\n", numBytes);
		}
	}
	else
	{
		// print argument error message
		printf("No argument given for the number of bytes: Terminating Program\n");
	}
	// Display end of program
	printf("\nEND OF PROGRAM.");

	// return success
	return 0;
}

int getRandBool()
{
	// Initialize local variables
	  // range
	register int range = BOOL_HIGH - BOOL_LOW + 1;

	// return the pseudo-random value
	return (rand() % range);
}

struct node *generateByte(struct node *headNode)
{
	// Initialize local variables
	register int counter;
	register struct node *tempNode;

	// set temp to start of the byte
	tempNode = headNode;

	// Loop through byte
	for(counter = 0;counter<BYTE_SIZE;counter++)
	{
		// allocate another node in memory
		headNode->nextNode = (struct node *)malloc(sizeof(struct node));
		// Move to the next node
		headNode = headNode->nextNode;
	}
	// reset head to byte start
	headNode = tempNode;

	// return the original byte head
	return headNode;
}

struct node *mungeByte(struct node *headNode)
{
	// Initialize local variables
	register int counter;
	register struct node *tempNode;

	// set temp to byte's head
	tempNode = headNode;
	
	for(counter = 0;counter<BYTE_SIZE;counter++)
	{
		// set node data to a 0 or 1
		headNode->node_data = getRandBool();
		// move to next node
		headNode = headNode->nextNode;
	}
	// reset head node to original byte head
	headNode = tempNode;

	// Return the byte head
	return headNode;
}

void printByte(struct node *headNode)
{
	// Initialize local variables
	register int counter;
	register long dec_val;
	static int byte_count;
	register struct node *byte_addr = headNode;
	
	byte_count++;

	printf("Byte %d Data:\n\n", byte_count);

	// loop through byte
	for(counter =0;counter<BYTE_SIZE;counter++)
	{
		// print the node's data
		printf(" %d", headNode->node_data);
		// move to next node
		headNode = headNode->nextNode;
	}
	// Find the bytes decimal value
	dec_val = byteToDecimal(byte_addr);

	// print value, address, and some newlines
	printf("\n\nthe bytes value is: %lu\n", dec_val);
	printf("the bytes base address is: %p", byte_addr);
	printf("\n--  --  --  --  --  --  -- -- --\n");
}

long byteToDecimal(struct node *headNode)
{
	// Initialize local variables
	register int counter;
	
	register long decimalVal, subExpr;

	// first bit to 7th power
	register double N = 7.0;

	// set val
	decimalVal = 0;

	// loop through byte
	for(counter = 0;counter<BYTE_SIZE;counter++)
	{
		subExpr = (long)(headNode->node_data * pow(2.0, N));
		decimalVal = decimalVal + subExpr;
		N--;
	}

	// Return the decimal value
	return decimalVal;
}

bool clearByte(struct node *headNode)
{
	// Initialize local variables
	register int counter;
	register bool success = false;
	register struct node *tempNode;

	// loop through byte
	for(counter = 0;counter<BYTE_SIZE;counter++)
	{
		// set temp at head
		tempNode = headNode;

		// Move to next node
		headNode = headNode->nextNode;

		// free the node
		free(tempNode);

		// set success
		success = true;
	}
	return success;
}
