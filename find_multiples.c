#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
    // Initialize the program
     // Initialize variables
    int range_start, range_end, multipland, multiprod, a;

    range_start = atoi(argv[1]);
    range_end =  atoi(argv[2]);
    multipland = atoi(argv[3]);

    // Process data
    for( a = 1; a < range_end; a = a + 1 ){
      multiprod = ( multipland * a );
      if(multiprod <= range_end && multiprod >= range_start)
      {
          printf( "%d\n", multiprod );
      }
   }

    // Return Outputs

    return 0;
}

