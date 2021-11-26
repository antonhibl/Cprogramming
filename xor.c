// XOR Encryption Program
// author: Anton Hibl

// Usage:   ./xor key input_file output_file

#include <stdio.h>
#include <stdlib.h>

int main( int argc, char *argv[] )
{
    // Local Variable Declarations
      // File Streams (In & Out)
    FILE *fi, *fo;
      // cipher character
    char *cp;
      // key value
    int c;

    // Read in the cipher key
    if((cp = argv[1]) && *cp!='\0')
    {
	// Open input_file in read mode if it exists
        if((fi = fopen(argv[2], "rb")) != NULL)
	{
	   // Open output_file in write mode if it exists
            if((fo = fopen(argv[3], "wb")) != NULL)
	    {
		// While the end of file has not been reached
	        while((c = getc(fi)) != EOF)
		{
		    // set current char's bits to key
		    if(!*cp) cp = argv[1];
		    // apply's shift and XOR with itself
		    c ^= *(cp++);
		    // print character
		    putc(c,fo);
		}
		// Close the output file
		fclose(fo);
	    }
	    // Close the input file
	    fclose(fi);
	}
    }
    // Return success
    return 0;
}
