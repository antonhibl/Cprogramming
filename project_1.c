// header files
#include "Console_IO_Utility.h"
#include <string.h>

// macros for switch statement
#define SATURDAY_NUMBER 0
#define SUNDAY_NUMBER 1
#define MONDAY_NUMBER 2
#define TUESDAY_NUMBER 3
#define WEDNESDAY_NUMBER 4
#define THURSDAY_NUMBER 5
#define FRIDAY_NUMBER 6

// global constants
const int MARCH_VALUE = 3;
const int MONTHS_IN_YEAR = 12;
const char SLASH_CHAR = '/';
const int TWO_ENDLINES = 2;
const int YEARS_IN_A_CENTURY = 100;

// prototypes
   // none

// main program
int main()
   {
    // initialize function/variables

       // initialize variables
       int inputMonth, inputDate, inputYear, processMonth, processYear;
       int firstTwoDigitsOfYear, secondTwoDigitsOfYear;
       int secondExpElement, fourthExpElement, fifthExpElement;
       int expSum, dayOfWeekNumber;
       char dayName[ STD_STR_LEN ];

       // show title
          // function: printString, printEndline(s)
       printEndline();
       printString( "Weekday Calculator" );
       printEndline();
       printString( "==================" );
       printEndlines( TWO_ENDLINES );

    // get input

       // get month
          // function: promptForInteger
       inputMonth = promptForInteger( "Enter the month (1-12): " );

       // get date
          // function: promptForInteger
       inputDate = promptForInteger(  "Enter the date (1-31) : " );

       // get year
          // function: promptForInteger
       inputYear = promptForInteger(  "Enter the year (XXXX) : " );

    // process data

       // check for birth before March
       if( inputMonth < MARCH_VALUE )
          {
           // adjust month value up by months in the year
           processMonth = inputMonth + MONTHS_IN_YEAR;

           // adjust year value down by one
           processYear = inputYear - 1;
          }

       // otherwise, assume birth March or later
       else
          {
           // set inputs to values to be processed
           processMonth = inputMonth;
           processYear = inputYear;
          }

       // calculate the first two digits of the year
	firstTwoDigitsOfYear = (int)( processYear / 100 );

       // calculate the second two digits of the year
        secondTwoDigitsOfYear = (int)( processYear % 100 );

       // calculate the second expression element
       // literal values are acceptable here as part of the formula
        secondExpElement = (int)( (13*(processMonth + 1))/5); 

       // calculate the fourth expression element
       // literal values are acceptable here as part of the formula
        fourthExpElement = (int)( secondTwoDigitsOfYear / 4);

       // calculate the fourth expression element
       // literal values are acceptable here as part of the formula
        fifthExpElement = (int)( firstTwoDigitsOfYear / 4);

       // calculate parenthesized expression sum
       // literal values are acceptable here as part of the formula
        expSum = (int)(inputDate + secondExpElement 
			+ secondTwoDigitsOfYear + fourthExpElement 
			+ fifthExpElement+(firstTwoDigitsOfYear*5));
       // find day of week number
       // literal values are acceptable here as part of the formula
        dayOfWeekNumber = (int)(expSum%7);

       // select day name result
       switch( dayOfWeekNumber )
          {
           // test for Saturday
           case SATURDAY_NUMBER:
              // set name to Saturday
              strcpy( dayName, "Saturday" );

              // stop tests
              break;
              
           // test for Sunday
           case SUNDAY_NUMBER:
              // set name to Sunday
              strcpy( dayName, "Sunday" );

              // stop tests
              break;
              
           // test for Monday
           case MONDAY_NUMBER:
              // set name to Monday
              strcpy( dayName, "Monday" );

              // stop tests
              break;
              
           // test for Tuesday
           case TUESDAY_NUMBER:
              // set name to Tuesday
              strcpy( dayName, "Tuesday" );

              // stop tests
              break;
              
           // test for Wednesday
           case WEDNESDAY_NUMBER:
              // set name to Wednesday
              strcpy( dayName, "Wednesday" );

              // stop tests
              break;
              
           // test for Thursday
           case THURSDAY_NUMBER:
              // set name to Thursday
              strcpy( dayName, "Thursday" );

              // stop tests
              break;
              
           // test for Friday
           case FRIDAY_NUMBER:
              // set name to Friday
              strcpy( dayName, "Friday" );

              // stop tests
              break;
          }
       
    // show results
       // function: printString, printInt, printEndline(s)
    printEndline();
    printString( "For the date " );
    printInteger( inputMonth );
    printCharacter( SLASH_CHAR );
    printInteger( inputDate );
    printCharacter( SLASH_CHAR );
    printInteger( inputYear );
    printString( ", the day was: " );
    printString( dayName );
    printEndlines( TWO_ENDLINES );
    // end program

       // show end program
          // function: printString, printEndline
       printString( "End Program" );
       printEndline();

       // return program success
       return 0;
   }


// supporting functions
   // none




