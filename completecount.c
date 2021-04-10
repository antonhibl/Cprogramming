#include <stdio.h>

/* inside a word */
#define IN 1

/* outside a word */
#define OUT 0


/* counts lines, words, & characters in output */
main()
{
  int c, nl, nw, nc, state;

    state = OUT;
  nl = nw = nc = 0;
  while((c = getchar()) != EOF) {
    ++nc;
    if(c == '\n')
      ++nl;
    if(c ==' '||c == '\n'||c == '\t')
      state = OUT;
    else if(state == OUT) {
      state = IN;
      ++nw;
    }
  }
  printf("%d %d %d\n", nl, nw, nc);
}
