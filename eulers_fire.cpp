#include <iostream>

using namespace std;

union Variant {
	char variant_str[10];
	int ultimate_answer;
	double eulers;
};

int main() {
	Variant dumpster;
	dumpster.ultimate_answer = 42;
	printf("The ultimate answer: %d\n", dumpster.ultimate_answer);
	dumpster.eulers = 2.7182818284;
	printf("Euler's number e:    %f\n", dumpster.eulers);
	printf("A dumpster fire:     %d\n", dumpster.ultimate_answer);

	return 0;
}
