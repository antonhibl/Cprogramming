#include <cstdio>

struct Atom {
	char name[256];
};

void print_elements(Atom *atoms, size_t n_atoms) {
	for(size_t i=0;i<n_atoms;i++) {
		printf("%s Atom\n", atoms[i].name);
	}
}

int main() {
	Atom halogens[] = {"Flourine", "Chlorine", "Bromine", "Iodine", "Astatine", "Tennessine"};
	print_elements(halogens, sizeof(halogens)/sizeof(Atom));

	return 0;
}
