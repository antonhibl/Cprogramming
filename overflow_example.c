#include <stdio.h>
#include <string.h>

// main program
int main( int argc, char * argv[] )
{
	// Initalize local variables
	int value = 5;
	char buffer_one[8], buffer_two[8];

	// Put one into buffer one
	strcpy(buffer_one, "one");
	// Put two into buffer two	
	strcpy(buffer_two, "two");

	printf("[BEFORE] buffer_two is at %p and contains \'%s\'\n", buffer_two, buffer_two);
	printf("[BEFORE] buffer one is at %p and contains \'%s\'\n", buffer_one, buffer_one);
	printf("[BEFORE] value is at %p and is %d (0x%08x)\n", &value, value, value);

	printf("\n[STRCPY] copying %lu bytes into buffer_two\n\n", strlen(argv[1]));
	// Copy first argument into buffer two
	strcpy(buffer_two, argv[1]);

	printf("[AFTER] buffer_two is at %p and contains \'%s\'\n", buffer_two, buffer_two);
	printf("[AFTER] buffer_one is at %p and contains \'%s\'\n", buffer_one, buffer_one);
	printf("[AFTER] value is at %p and is %d (0x%08x)\n", &value, value, value);

	return 0;
}
#include <string.h>

// main program
int main( int argc, char * argv[] )
{
	// Initalize local variables
	int value = 5;
	char buffer_one[8], buffer_two[8];

	// Put one into buffer one
	strcpy(buffer_one, "one");
	// Put two into buffer two	
	strcpy(buffer_two, "two");

	printf("[BEFORE] buffer_two is at %p and contains \'%s\'\n", buffer_two, buffer_two);
	printf("[BEFORE] buffer one is at %p and contains \'%s\'\n", buffer_one, buffer_one);
	printf("[BEFORE] value is at %p and is %d (0x%08x)\n", &value, value, value);

	printf("\n[STRCPY] copying %lu bytes into buffer_two\n\n", strlen(argv[1]));
	// Copy first argument into buffer two
	strcpy(buffer_two, argv[1]);

	printf("[AFTER] buffer_two is at %p and contains \'%s\'\n", buffer_two, buffer_two);
	printf("[AFTER] buffer_one is at %p and contains \'%s\'\n", buffer_one, buffer_one);
	printf("[AFTER] value is at %p and is %d (0x%08x)\n", &value, value, value);

	return 0;
}
#include <string.h>

// main program
int main( int argc, char * argv[] )
{
	// Initalize local variables
	int value = 5;
	char buffer_one[8], buffer_two[8];

	// Put one into buffer one
	strcpy(buffer_one, "one");
	// Put two into buffer two	
	strcpy(buffer_two, "two");

	printf("[BEFORE] buffer_two is at %p and contains \'%s\'\n", buffer_two, buffer_two);
	printf("[BEFORE] buffer one is at %p and contains \'%s\'\n", buffer_one, buffer_one);
	printf("[BEFORE] value is at %p and is %d (0x%08x)\n", &value, value, value);

	printf("\n[STRCPY] copying %lu bytes into buffer_two\n\n", strlen(argv[1]));
	// Copy first argument into buffer two
	strcpy(buffer_two, argv[1]);

	printf("[AFTER] buffer_two is at %p and contains \'%s\'\n", buffer_two, buffer_two);
	printf("[AFTER] buffer_one is at %p and contains \'%s\'\n", buffer_one, buffer_one);
	printf("[AFTER] value is at %p and is %d (0x%08x)\n", &value, value, value);

	return 0;
}


