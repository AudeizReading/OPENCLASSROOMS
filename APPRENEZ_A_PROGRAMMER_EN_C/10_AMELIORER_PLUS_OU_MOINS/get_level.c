#include <stdio.h>
#include "functions.h"

int	get_level(void)
{
	int choice, max;

	choice = max = 0;
	while (choice < 1 || choice > 3)
	{
		scanf("%1d", &choice);
		if (choice == 1)
			max = 100;
		else if (choice == 2)
			max = 1000;
		else if (choice == 3)
			max = 10000;
		else
			printf("La saisie n'est pas valide\n");
	}
	return (max);
}
