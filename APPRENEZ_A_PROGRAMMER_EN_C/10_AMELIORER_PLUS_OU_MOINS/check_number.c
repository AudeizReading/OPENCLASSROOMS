#include <stdio.h>
#include "functions.h"

void		check_number(int number, int secret, int min, int max)
{
	if (number < min || number > max)
	{
		if (number == 0)
		{
			printf("Vous avez saisi un caractère, ce n'est pas permis.\n");
		}
		else
		{
			printf("La réponse %d est hors de portée du nombre mystère.\n",
					number);
		}
	}
	else if (number < secret)
	{
		printf("Le nombre mystère est supérieur à %3d\n", number);
	}
	else if (number > secret)
	{
		printf("Le nombre mystère est inférieur à %3d\n", number);
	}
}
