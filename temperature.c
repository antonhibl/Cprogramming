#include <stdio.h>
/* prints a farenheit-celsius table
   for fahr = 0, 20,-300 */
main()
{
    int fahr, celsius;
    int lower, upper, step;

      lower = 0; /* lower limit of the temperature table */
    upper = 300; /* upper limit of the temperature table */
    step = 20;   /* step size for each instance */
    
      fahr = lower;
    while (fahr <= upper) {
      celsius = (5.0/9.0) * (fahr-32.0);
      printf("%3.0d\t%6.1d\n", fahr, celsius);
      fahr =fahr + step;
    }
}
