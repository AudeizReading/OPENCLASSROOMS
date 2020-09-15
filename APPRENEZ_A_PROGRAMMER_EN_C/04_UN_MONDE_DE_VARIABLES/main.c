/* Programme demandant à l'utilisateur de saisir son âge et l'affiche */
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int age=0; // Initialisation de la variable à 0, sinon elle pourrait avoir n'importe quelle valeur

    printf("Quel âge avez-vous ?\n");
    scanf("%d", &age); // On demande d'entrer l'âge avec scanf
    printf("Vous avez %d ans !\n", age);

    return EXIT_SUCCESS;
}
