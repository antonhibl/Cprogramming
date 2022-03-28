#include <cstdio>

int main() {
	int gettysburg;
	int *gettysburg_address = &gettysburg;
	*gettysburg_address = ~*gettysburg_address<<32;
	printf("gettysburg: %d\n", gettysburg);
	printf("&gettysburg: %p\n", gettysburg_address);
	return 0;
}
