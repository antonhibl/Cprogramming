#include <stdio.h>
#define MAXLINE 1000    /* maximum input line size */

int GetLine(char line[], int maxline);
void copy(char to[], char from[]);

/* print the longest input line */
main()
{
    int len;            /* current line's length */
    int max;            /* maximum length seen so far */
    char line[MAXLINE];     /* current input line */
    char longest[MAXLINE];  /* longest line is saved here */

    max = 0;
    while ((len = GetLine(line, MAXLINE))> 0)
        if (len> max) {
            max = len;
            copy(longest, line);
        }
    if (max> 0)     /* there was a line */
        printf("%s", longest);
    return 0;
}

/* GetLine:  read a line into s, return it's length */
int GetLine(char s[], int lim)
{
    int c, i;

    for (i=0; i<lim-1 && (c=getchar()) !=EOF && c!='\n'; ++i)
        s[i] = c;
    if (c == '\n') {
        s[i] = c;
        ++i;
    }
    s[i] = '\0';
    return i;
}

/* copy:  copy 'from' into 'to'; assume that to is big enough */
void copy(char to[], char from[])
{
    int i;

    i = 0;
    while ((to[i] = from[i]) != '\0')
        ++i;
}
