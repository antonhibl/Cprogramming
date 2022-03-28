#include <cstdio>
#include <iostream>

using namespace std;

enum Clan {
	Hojo,
	Minamoto,
	Taira,
	Ashikaga,
	Ouchi,
	Imagawa,
	Takeda,
	Asakura,
	Asai,
	Tokugawa
};


int main() {

	Clan clan = Tokugawa;

	// Clan Switch
	switch(clan) {
		case Hojo: {
			printf("Your clan holds regency and honor within the shogunate..");
		  } break;
		case Asai: {
			printf("Your clan is allies of the Asakura clan in fighting against the Nobunaga clan.");
		  } break;
		case Asakura: {
			printf("Your clan is a religious warfare faction");
		  } break;
		case Ashikaga: {
			printf("Your clan is a newcomer to the Shogunate.");
		  } break;
		case Imagawa: {
			printf("Your clan is infamous for its use of schemes and subversions to gain power.");
		  } break;
		case Minamoto: {
			printf("You share blood with the Asai.");
		  } break;
		case Ouchi: {
			printf("Your clan holds korean roots.");
		  } break;
		case Taira: {
			printf("Your clan honors the Hagakure.");
		  } break;
		case Takeda: {
			printf("Your clan balances agriculture and warfare equally.");
		  } break;
		case Tokugawa: {
			printf("Your clan rose to fame with Oda Nobunaga and siezed the Shogunate following his death.");
		  } break;
		default: {
			printf("Error: unknown clan!");
		  }
	}

	return 0;
}
