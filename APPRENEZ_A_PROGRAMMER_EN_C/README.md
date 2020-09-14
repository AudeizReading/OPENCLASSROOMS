# Apprenez à programmer en C !
## Partie 1 - Les bases de la programmation en C
### 1. Vous avez dit programmer ?
C est un langage dit de **"haut niveau"**, facile à utiliser, proche du langage courant.

Le **code source** est le code du programme écrit dans un langage de haut niveau.

Pour traduire notre *code source* écrit en langage de *haut niveau*, on utilise un **compilateur**. La traduction s'appelle la **compilation**. Il existe un compilateur différent pour chaque langage de haut niveau.

Le programme **binaire** crée par le *compilateur* (donc le code source *traduit*) est appelé **l'exécutable**. C'est pour cela que sous Windows, on les retrouve sous l'extension **.exe**.

Certains langages de **très haut niveau** doivent être accompagnés d'un interpréteur, ou d'autres fichiers pour qu'ils peuissent s'exécuter (Python, VB, Ruby, JS, PHP...) Ce n'est pas le cas de **C** qui est un peu plus bas niveau que ces langages.
### 2. Ayez les bons outils !
La très mauvaise surprise du cours, c'est qu'on n'apprend pas du tout à coder du C en ligne de commande... On doit passer par un IDE qui fait compilateur du style **Code::Blocks**...

Les bons outils en CLI :

- l'éditeur de texte **vim** (emacs fait tout aussi bien l'affaire, c'est juste que
  je connais mieux vim et pas du tout emacs)
- le compilateur **gcc**
- le débogueur **gdb**
- l'utilitaire **make**
- et un fichier **Makefile** par projet à compiler

gcc et make sont accessibles par le paquet **build-essential**, gdb par le
paquet gdb. Le Makefile s'écrit dans un éditeur de texte.

La notion de compilation en ligne de commande est assez complexe, je ne
l'aborderai pas dans ce README.md. En revanche, après m'être plongée dans les
documentations de référence, j'ai écrit un mémo à ce sujet que j'ai converti en
PDF, pour une plus grande protabilité (tout le monde n'a pas forcément une
licence Microsoft Office). Je le pousse donc dans ce repository, à toutes fins
utiles pour ceux que ça intéresse de mettre les mains dans le cambouis. Sinon,
il faut se procurer un IDE doté d'un compilateur et d'un débogueur, tel que
**Code::Blocks** (Windows, Mac & Linux), **Visual Studio Express** version gratuite
de l'éditeur Microsoft Visual C++ (Windows seulement), ou encore **Xcode** (Mac
seulement)...

Petite aparté : je le sens bien ce cours (ironie...), je sens que la
structuration des notions abordées et les blagues potaches de l'auteur vont plus
que m'énerver... J'ai sauté quelques pages, avant de revenir par ici, et j'ai
failli m'étouffer lorsque j'ai lu que la gestion de la mémoire ce n'était pas si
grave que ça puisqu'on en avait plein... ça commence bien, si déjà, on ne
sensibilise pas sur les bases... La mémoire, c'est la base, peu importe que les
ordinateurs modernes en aient plus qu'auparavant. C'est d'ailleurs, je trouve,
toute la force d'un langage comme C, de pouvoir gérer la mémoire afin d'en
consommer le moins possible... Mais, si tu n'expliques pas ceci, comment tu veux
que les gens se sentent concernés ?

Je viens de retrouver la ligne en question : "à l'origine les types ont été
créés pour économiser de la mémoire [...] Toutefois, c'était utile surtout à
l'époque où la mémoire était limitée. Aujourd'hui, nos ordinateurs ont largement
assez de mémoire vive pour que ça ne soit plus vraiment un problème. Il ne sera
donc pas utile de se prendre la tête pendant des heures sur le choix d'un type."
Mais où va-t-on ? ai-je envie de demander...

Ah oui, autre chose qui m'a fait tiqué dès le début. Sur le beau site
d'OpenClassrooms, la durée estimée pour apprendre les notions de C est de 40h.
Le pdf du cours lui indique 2 mois et demi... Voilà, voilà, on est bien avancé,
non ? En gros, si tu n'es que sur le site, et que tu t'appliques à tout exécuter
consciencieusement, tu vas dépasser largement les 40h d'études... Et donc, tu
vas culpabiliser, car "merde, j'ai fait plus de 40h..." Tu vas te sentir un peu
nul de ne pas être à la hauteur... Alors que, si on s'en tiens à la durée donnée
dans le pdf, bah déjà, on se rapproche un peu plus de la réalité...Et forcément,
tu culpabilises un peu moins... Techniques commerciales douteuses ?
### 3. Votre premier programme
Le premier programme consistera, comme d'habitude à afficher **Hello world**!

Il existe deux types de programmes:
* Les programmes avec fenêtres;
* Les programmes en console.

Les plus simples à programmer, en tant que débutant, sont les programmes
consoles. Ils font intervenir la ligne de commande pendant leur exécution tandis
que les programmes avec fenêtres, aussi appelés GUI pour Graphical User
Interface font intervenir des fenêtres qui interagissent avec l'utilisateur.
Quasiment tous les programmes Windows sont des GUI (paint, calculatrice, etc.)

Les programmes consoles se lance en ligne de commande et suivent le modèle de
leur grand frère Linux, pour résumer très très grossièrement. Sous Windows, la
console peut s'obtenir en demandant au programme **cmd.exe** de s'exécuter (mais
entre nous, c'est franchement pas folichon, rien de tel qu'une bonne console
Linux).

Chaque fichier C devrait se finir par une ligne vide, sans quoi le compilateur
affichera un avertissement.

Une fonction main a la syntaxe suivante

    int main()

ou

    int main(int argc, char *argv[])

Comme il nous est dit que la seconde version est "trop compliquée", bah c'est
pas la peine de nous expliquer ce qu'est argc et *argv[]...

argc est le nombre de paramètres qu'on a passé au programme (en ligne de
commande, comme pour Shell) et *argv[] est un pointeur de tableau contenant les
arguments passés en paramètre. Je ne suis pas encore trop à l'aise avec les
pointeurs mais en gros, c'est l'adresse en mémoire des arguments, et non leur
valeur, qui est manipulée. Toute fonction main renvoie une valeur numérique dite
de retour.

    return 0; // Si tout s'est bien passé

En début de script, nous avons les directives de préprocesseur:

    #include <stdio.h>
    #define MAXI 300

Ce n'est pas du C! Mais on l'utilise allègrement en complément. Une ligne
include permet d'inclure une bibliothèque, si <>, alors il s'agit de la bibliothèque standard C; si "", il s'agit d'une bibliothèque personnelle contenue dans le répertoire courant du script.  
Une ligne define permet de définir un nom ou constante symbolique. Et on peut
faire encore beaucoup de choses avec les directives de préprocesseur, il sera
bien temps de revenir là-dessus.

Une instruction est une commande demandant à l'ordinateur de faire quelque
chose. Toute instruction se termine par ; sans quoi le compilateur ne compilera
pas. Ainsi :

    printf("Hello World!\n);

    int nombre;

    return 0;

    variable=valeur;

Toutes ces instructions se terminent par un point-virgule ; .

printf() est une fonction issue de la bibliothèque <stdio.h>. Elle permet
d'afficher une valeur qu'on lui passe en sortie standard.

Les accents ne sont pas bien gérés par la console Windows. Il n'y a pas ce souci
avec la console WSL. Néanmoins, on n'en utilisera pas dans le nom de variable.
OC recommande de carrément s'en passer.

Il y a deux formes de commentaires selon qu'ils soient sur une ou plusieurs
lignes :

    // Commentaire sur une ligne

    /* Commentaire
    sur plusieurs
    lignes */

### 4. Un monde de variables
### 5. Une bête de calcul
### 6. Les conditions
### 7. Les boucles
### 8. TP : Plus ou moins, votre premier jeu
### 9. Les fonctions
### 10. Entraînez-vous à améliorer le jeu du "plus ou moins"
### Quiz 1
## Partie 2 - Techniques "avancées" du langage C
### 1. La programmation modulaire
### 2. À l'assaut des pointeurs
### 3. Les tableaux
### 4. Les chaînes de caractères
### 5. Le préprocesseur
### 6. Crééz vos propres types de variables
### 7. Lire et écrire dans des fichiers
### 8. L'allocation dynamique
### 9. TP : réalisation  d'un pendu
### 10. La saisie de texte sécurisée
### 11. Apprenez à expliquer les pointeurs
### Quiz 2
## Partie 3 - Création de jeux 2D en SDL
### 1. Installation de la SDL
### 2. Création d'une fenêtre et de surfaces
### 3. Afficher des images
### 4. La gestion des évènements
### 5. TP : Mario Sokoban
### 6. Maîtrisez le temps !
### 7. Écrire du texte avec SDL\_ttf
### 8. Jouer du son avec FMMOD
### 9. TP : visualisation spectrale du son
### Quiz 3
## Partie 4 - Les structures de données
### 1. Les listes chaînées
### 2. Les piles et les files
### 3. Les tables de hachage
### Quiz 4
