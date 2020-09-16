#include <stdio.h>
#include <stdlib.h>

int main()
{
    int age = 20;
    int majeur = 0;

    majeur = age >= 18; // La condition est vraie, majeur vaut 1
    printf("majeur = age >= 18 . Alors majeur vaut %d\n",majeur);

    majeur = age == 10; // La condition est fausse, majeur vaut 0
    printf("majeur = age == 10 . Alors majeur vaut %d\n", majeur);

    int c;
    /* Avec les flags très restrictifs que j'utilise à la compilation, afficher
     * une variable non initialisée me génère une erreur fatale
    printf("On teste de voir la valeur de la variable c sans affectation : %d\n", c); */

    c = getchar();
    printf("Valeur de la variable c : %d\n", c);

    // Simulation d'un menu interactif grâce à une condition switch
    int choix;

    printf("=== Menu ===\n\n");
    printf("1. Royal Cheese\n");
    printf("2. Mc Deluxe\n");
    printf("3. Mc Bacon\n");
    printf("4. Big Mac\n");
    printf("\nVotre choix ? \n");
    scanf("%d", &choix);

    printf("\n");

    switch (choix)
    {
        case 1:
            printf("Vous avez choisi le Royal Cheese.");
            break;
        case 2:
            printf("Vous avez choisi le Mc Deluxe.");
            break;
        case 3:
            printf("Vous avez choisi le Mc Bacon.");
            break;
        case 4:
            printf("Vous avez choisi le Big Mac.");
            break;
        default:
            printf("Votre choix n'est pas valide !");
            break;
    }

    printf("\n\n");

    return EXIT_SUCCESS;
}
