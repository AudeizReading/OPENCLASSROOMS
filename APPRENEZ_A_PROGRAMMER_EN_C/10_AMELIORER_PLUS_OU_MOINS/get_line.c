#include <ctype.h>
#include <stdio.h>
#include "functions.h"

int	get_line(char s[], int limit)
{
	int	c, i;

	i = 0;
	while (--limit > 0 && (c = getchar()) != EOF && !isspace(c))
		s[i++] = c;
	s[i] = '\0';
	return (i);
}
