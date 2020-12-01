#include "functions.h"

int	atoi_plus_or_minus(char s[])
{
	int	i, n;

	n = i = 0;
	while (s[i] >= '0' && s[i] <= '9')
	{
		n = 10 * n + s[i] - '0';
		i++;
	}
	return (n);
}
