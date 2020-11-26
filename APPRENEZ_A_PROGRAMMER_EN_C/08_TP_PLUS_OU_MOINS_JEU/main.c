#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int get_line(char s[], int limit);
int atoi_plus_or_minus(char s[]);

int	main(void)
{
	const int MIN = 1;
	const int MAX = 100;
	int mystery_number, response, cpt;
	char string[5];

	srand(time(NULL)); /* Amorce la nouvelle séquence de nb pseudos aléatoires*/
	/* Ne faire l'amorce qu'une seule fois par script ! */
	mystery_number = (rand() % MAX) + MIN;
	response = cpt = 0;
	while (response != mystery_number)
	{
		printf("Entrez un nombre entre 1 et 100 : \n");
		if (get_line(string, 5))
			response = atoi_plus_or_minus(string);
		if (response < 1 || response > 100)
		{
			printf("La réponse %d est hors de portée du nombre mystère.\n",
					response);
		}
		else if (response < mystery_number)
		{
			printf("Le nombre mystère est supérieur à %3d\n", response);
		}
		else if (response > mystery_number)
		{
			printf("Le nombre mystère est inférieur à %3d\n", response);
		}
		cpt++;
	}
	if (response == mystery_number)
	{
		printf("Vous avez trouvé le nombre mystère : %3d, en %d coup(s).\n",
				mystery_number, cpt);
	}
	return (EXIT_SUCCESS);
}

int get_line(char s[], int limit)
{
	int c, i;

	i = 0;
	while (--limit > 0 && (c = getchar()) != EOF && !isspace(c))
		s[i++] = c;
	s[i] = '\0';
	return (i);
}

int atoi_plus_or_minus(char s[])
{
	int i, n;

	n = i = 0;
	while (s[i] >= '0' && s[i] <= '9')
	{
		n = 10 * n + s[i] - '0';
		i++;
	}
	return (n);
}
