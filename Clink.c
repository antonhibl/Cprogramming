// Linked List Program
// author: Anton Hibl

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include "Clink.h"
#include <unistd.h>
#include <math.h>

// Main program
int main( int argc, char *argv[] )
{
    // Initialize local variables
    // counter for loops
    register int counter;

    // Print Program Title
      // function: printf()
    printf(" Random Byte Generation Program\n");
    printf("================================\n\n");
    
    // Check if correct number of arguments was given(2)
    if(argc == 2)
    {
        // number of bytes to generate
          // function: atoi()
        const int numBytes = atoi(argv[1]);

        // check if number of bytes to generate is greater than 0
        if(numBytes > 0)
        {
            // loop to number of bytes
            for(counter = 0;counter<numBytes;counter++)
            {
                // seed random
                  // function: srand(), time()
                srand(time(NULL));

                // Allocate the head node
                  // function: malloc(), sizeof()
                register struct node *byte = (struct node *)malloc(
                                                    sizeof(struct node));
                
                // generate rest of Byte
                  // function: generateByte()
                byte = generateByte(byte);

                // Fill Byte with random data
                  // function: mungeByte()
                byte = mungeByte(byte);

                // Print the byte data
                  // function: printByte()
                printByte(byte);

                // Wait to gaurantee entropy
                  // function: sleep()
                sleep(1);

                // If byte clears
                  // clearByte()
                if(clearByte(byte))
                {
                    // print byte cleared success
                      // function: printf()
                    printf("\nByte %d cleared successfully.\n", (counter+1));
                    printf("\n--  --  --  --  --  --  -- -- --\n");
                }
            }
            // Printing number of byte's generated
              // function: printf()
            printf("Number of bytes generated: %d\n", numBytes);
        }
    }
    // otherwise incorrect number of arguments
    else
    {
        // print argument error message
          // function: printf()
        printf("No argument given for the number of bytes: Terminating Program\n");
    }
    // Display end of program
      // function: printf()
    printf("\nEND OF PROGRAM.");

    // return success
    return 0;
}

_Bool getRandBool()
{
    // return the pseudo-random value
      // functions: rand()
    return (_Bool)(rand()% (2));
}

struct node *generateByte(struct node *headNode)
{
    // Initialize local variables
      // loop counter
    register int counter;
      // temporary node variable
    register struct node *tempNode;

    // set temp to start of the byte
    tempNode = headNode;

    // Loop through byte
    for(counter = 0;counter<BYTE_SIZE;counter++)
    {
        // allocate another node in memory
          // function: malloc(), sizeof()
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
      // loop counter
    register int counter;
      // temporary node variable
    register struct node *tempNode;

    // set temp to byte's head
    tempNode = headNode;
    
    // loop through byte
    for(counter = 0;counter<BYTE_SIZE;counter++)
    {
        // set node data to a 0 or 1
          // function: getRandBool()
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
      // loop counter
    register int counter;
      // reverse count initialized to BYTE_SIZE - 1
    register int rev_count = BYTE_SIZE - 1;
      // byte #
    static int byte_count;
      // base address of the byte
    register struct node *byte_addr = headNode;
      // byte value initialized to 0
    register int byte_val = 0;
	  // whole byte size
	register int wholeByte = 0;
    
    // increment the byte count
    byte_count++;

    // Print byte number
      // function: printf()
    printf("Byte %d Data:\n\n", byte_count);

    // loop through byte
    for(counter=0;counter<BYTE_SIZE;counter++)
    {
		// Increase byte size
		  // function: sizeof()
		wholeByte += sizeof(struct node);
        // add to byte value
          // function: bitToDecimal()
        byte_val += bitToDecimal(headNode->node_data, rev_count);
        // print the node's data
          // function: printf()
        printf(" %d", headNode->node_data);
        // move to next node
        headNode = headNode->nextNode;
        // decrement rev_count
        rev_count = rev_count - 1.0;
    }

    // Print the byte's decimal value
      // function: printf()
    printf("\n\nthe bytes value is: %d\n", byte_val);
    // Print the byte's base address
      // function: printf()
    printf("the bytes base address is: %p\n", byte_addr);
	// Print the byte's size
	  // function: printf()
	printf("the size of the byte is: %d", wholeByte);
}

int bitToDecimal(_Bool node_data, float N)
{
    // calculate & return decimal value with Nth little-endian ordination
      // function: powf()
    return (int)((int)(node_data) * powf(2.0, N));
}

_Bool clearByte(struct node *headNode)
{
    // Initialize local variables
      // loop counter
    register int counter;
      // _Boolean success flag initialized to false
    register _Bool success = 0;
      // temporary node variable
    register struct node *tempNode;

    // loop through byte bit-by-bit
    for(counter = 0;counter<BYTE_SIZE;counter++)
    {
        // set temp at head
        tempNode = headNode;

        // Move to next node
        headNode = headNode->nextNode;

        // free the node
          // function: free()
        free(tempNode);

        // set success
        success = 1;
    }
    // return the success
    return success;
}
