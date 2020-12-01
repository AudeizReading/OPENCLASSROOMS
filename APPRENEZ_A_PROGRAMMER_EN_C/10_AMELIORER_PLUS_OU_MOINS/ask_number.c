#include <stdio.h>
#include "functions.h"

int	ask_number(char s[], int limit, int max)
{
	printf("Entrez un nombre entre 1 et %d : \n", max);
	if (get_line(s, limit))
		return (atoi_plus_or_minus(s));
	else
		return (-1);
}

