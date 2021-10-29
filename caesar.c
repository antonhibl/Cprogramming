// Caesar Encryption Program
// author: Anton Hibl

// Usage:   ./caesar key input_file output_file

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

int main( int argc, char *argv[] )
{
    // Local Variable Declarations
      // File Streams (In & Out)
    FILE *fi, *fo;
      // cipher character
    char * cp;
      // key value
    char c;

    // Read in the cipher key
    if((cp = argv[1]) && *cp!='\0')
    {
	// Open input_file in read mode if it exists
        if((fi = fopen(argv[2], "rb")) != NULL)
		{
			// Open output_file in write mode if it exists
            if((fo = fopen(argv[3], "wb")) != NULL)
			{
				while((c=getc(fi)) != EOF)
				{
					signed int k = atoi(cp);

					if(c>='a'&&c<= 'z')
					{
						c=c+k;
						if(c>'z')
						{
							c=c-'z'+'a'-1;
						}
						putc(c,fo);
					}
					if(c>='A'&&c<='Z')
					{
						c=c+k;
						if(c>'Z')
						{
							c=c-'Z'+'A'-1;
						}
						putc(c,fo);
					}
					else
					{
						if(c==' ')
						{
							c = ' ';
						}
						else
						{
							c=c+k;
						}
						putc(c,fo);
					}
				}
			}
			// Close the output file
			fclose(fo);
		}
		// Close the input file
		fclose(fi);
	}
	// Return success
	return 0;
}
