#include <stdio.h>

/* count number of lines, version 1 */
main()
{
    int c, nl;

        nl = 0;
    while ((c = getchar()) != EOF)
        if(c == '\n')
            ++nl;
    printf("%d\n", nl);
}
