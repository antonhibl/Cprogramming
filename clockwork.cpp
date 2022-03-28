#include <cstdio>

class ClockOfTheLongNow {
	public:
		int year;	
	
		ClockOfTheLongNow(int year_in) {
			if(!set_year(year_in)) {
				year = 2019;
			}
		}	

		void add_year() {
			year++;
		}

		bool set_year(int new_year) {
			if( new_year < 2019) return false;
			year = new_year;

			return true;
		}

};

int main() {
	ClockOfTheLongNow clock(4000);
	printf("year: %d\n", clock.year);
	clock.add_year();
	printf("year: %d\n", clock.year);
	clock.add_year();
	printf("year: %d\n", clock.year);
	clock.add_year();
	printf("year: %d\n", clock.year);

	return 0;
}
