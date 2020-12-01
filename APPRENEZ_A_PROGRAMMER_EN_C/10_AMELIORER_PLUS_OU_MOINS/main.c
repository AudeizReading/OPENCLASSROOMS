#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "functions.h"

const int	MIN = 1;

int		main(void)
{
	int			mystery_number, response, play, c, max;

	srand(time(NULL));
	response =  0;
	play = 1;
	while (play)
	{
		printf("Voulez-vous jouer une partie? Y/N\n");
		if ((c = getchar()) != EOF && (c == 'Y' || c == 'y'))
		{
			display_menu();
			max = get_level();
			mystery_number = (rand() % max) + MIN;
			check_answer(response, mystery_number, MIN, max);
		}
		else
		{
			play = 0;
		}
	}
	return (EXIT_SUCCESS);
}
