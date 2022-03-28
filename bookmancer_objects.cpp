#include <cstdio>
#include <string>
#include <iostream>

using namespace std;

struct Book {
	string name;
	int year;
	int pages;
	bool hardcover;
};

int main() {
	Book neuromancer;
	neuromancer.name = "The Neuromancer";
	neuromancer.year = 6000;
	neuromancer.pages = 271;
	neuromancer.hardcover = true;

	cout << "The name of the book is ";
	cout << neuromancer.name;
	printf("\nit was released in %d BC", neuromancer.year);
	printf("\nNeuromancer has %d pages", neuromancer.pages);

	return 0;
}

