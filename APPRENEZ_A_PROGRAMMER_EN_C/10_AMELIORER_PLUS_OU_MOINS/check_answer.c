#include <stdio.h>
#include "functions.h"

void	check_answer(int answer, int secret, int min, int max)
{
	int		cpt = 0;
	char	string[10];
	char	counts[6] = "coups";

	while (answer != secret)
	{
		if ((answer = ask_number(string, 10, max)) != -1)
		{
			check_number(answer, secret, min, max);
			cpt++;
		}		
	}
	if (answer == secret)
	{
		if (cpt == 1)
			counts[4] ='\0';
		printf("Vous avez trouvé le nombre mystère : %3d, en %d %s.\n",
				secret, cpt, counts);
	}
}
