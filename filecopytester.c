#include <stdio.h>

/* copy the input to the output */
main()
{
  int c;

      c = getchar();
  while (c != EOF) {
    putchar(c);
    c = getchar();
  }
}
