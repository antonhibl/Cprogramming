#include <cstdio>

class Ship {
	public:
		int crew_members;
		int years_at_sea;

		Ship(int in_crew) {
			if(in_crew>=10) {
				crew_members = in_crew; 
			} else {
				crew_members = 10;
			}
		}

		void increase_time(int time) {
			years_at_sea+=time;
		}

		bool set_time(int year) {
			if(year>0) {
				years_at_sea = year;
				return true;
			} 
			return false;
		}

		~Ship() {
			printf("The ship was destroyed!\n\n");
		}
};

int main() {
	Ship ship(21);
	Ship *ship_port = &ship;
	ship_port->set_time(420);
	ship.increase_time(69);
	printf("Address of ship: %p\n", ship_port);
	printf("Number of crew members: %d\n", ship.crew_members);
	printf("Amount of time at sea: %d\n", ship.years_at_sea);

	return 0;
}
