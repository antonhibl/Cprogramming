#include <stdio.h>
#include <stdbool.h>

int main( int argc, char * argv[] )
{
	printf("an int uses %zu bytes of memory\n", sizeof(int));
    printf("a double uses %zu bytes of memory\n", sizeof(double));
    printf("a long uses %zu bytes of memory\n", sizeof(long));
    printf("a float uses %zu bytes of memory\n", sizeof(float));
    printf("a char uses %zu byte of memory\n", sizeof(char));
    printf("a void uses %zu byte of memory\n", sizeof(void));
    printf("a FILE uses %zu bytes of memory\n", sizeof(FILE));
    printf("a char pointer uses %zu bytes of memory\n", sizeof(char *));
    printf("a bool uses %zu byte of memory\n", sizeof(bool));
    printf("an unsigned char uses %zu byte of memory\n", sizeof(unsigned char));
    return 0;
}
