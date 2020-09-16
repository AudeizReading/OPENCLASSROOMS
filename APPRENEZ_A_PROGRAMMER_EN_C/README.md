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
Le principe d'une variable est de faire retenir des nombres à l'ordinateur. On
va apprendre à stocker des nombres dans la mémoire.

Un ordinateur a plusieurs types de mémoires. C'est du au fait qu'on a, à la
fois, besoin de mémoire rapide et de mémoire importante pouvoir y recevoir
beaucoup de données. Le souci, c'est qu'on n'est pas encore capable de mettre
toutes ces particularités dans une seule et même mémoire, dans un ordinateur.
Soit la mémoire est rapide mais ne contient pas beaucoup d'espace de stockage,
doit elle a une grande capacité de stockage mais n'est pas rapide.
Entendons-nous, on parle à l'échelle de l'ordinateur, sa mémoire sera toujours
plus rapide que celle de n'importe quel humain.

Ce qui nous donne 4 types de mémoires existant dans un ordinateur, de la plus
rapide à la plus lente :
1. Les **registres** : une mémoire ultra rapide située directement dans le
   processeur. Ils sont à peine capables de retenir quelques nombres.
2. La **mémoire cache** : elle fait le lien entre les registres et la mémoire
   vive.
3. La **mémoire vive** : c'est la mémoire avec laquelle nous allons travailler
   le plus souvent.
4. Le **disque dur** : c'est là qu'on enregistre les fichiers.

On va surtout travailler avec la mémoire vive, un peu avec le disque dur pour
lire et créer des fichiers et jamais avec la mémoire cache et les registres.
Un langage comme l'assembleur (ASM pour les intimes) manipule plutôt les
registres. Par conséquent, ce n'est pas très évident de faire des calculs avec.

Seule le disque dur retient tout le temps les informations qu'il contient, les
autres mémoires sont des mémoires temporaires, elles se vident de leur contenu
lorsque l'on éteint l'ordinateur.

La mémoire vive est située dans les barrettes de RAM (elles sont rattachées à la
carte mère de l'unité centrale).

La mémoire vive se distingue en deux catégories:
- D'un côté, nous avons les adresses : c'est un nombre qui permet à l'ordinateur de se repérer dans la mémoire vive. On commence à l'adresse 0 et on finit à une adresse avec un nombre très très élevé, que l'on peut retrouver sous forme de puissance de 2. Plus on a de RAM, plus on a d'adresses, plus on peut stocker de choses.
- De l'autre, on a les valeurs qui sont stockées dans chaque adresse. Une valeur
  est un nombre, et on a un seul nombre par adresse. La RAM ne peut stocker que
  des nombres.

Pour pouvoir faire la correspondance entre les lettres et les nombres les
représentants, il existe un tableau recensant ces données. On aura l'occasion
d'en reparler plus loin dans le cours (Youhouh..., genre quand on abordera les
pointeurs de chaînes de caractères ?).

Une variable, c'est une information temporaire que l'on stocke dans la RAM. Une
variable a un nom et une valeur. Le nom aura une correspondance avec l'adresse
mémoire qu'occupe la variable, cela évite d'avoir à retenir son adresse. Le
compilateur se chargera de faire la conversion entre le nom et l'adresse.

Un nom de variable ne peut avoir que des minuscules, des capitales et des
chiffres. Le nom doit commencer par une lettre. Les espaces sont interdits ainsi
que les accents en tout genre. C fait la différence entre une casse haute et une
casse basse. Il existe plusieurs conventions pour nommer ses variables : camel
case, pascal case, snake case pour ne citer qu'elles. On choisit celle avec
laquelle on se sent le plus à l'aise, et on s'y tient : On ne mélange pas les
casses, au risque de ne plus rien comprendre de ce qu'on a écrit.

En C, tout est typé, à commencer par les variables. Il n'y a pas tant que ça
de types différents, dans la mesure où C considère que tout est nombre. Pour
tout ce qui est caractère, il se sert de la table ASCII pour établir les
conversions : à chaque lettre correspond un nombre. Les types peuvent être signés ou
non signés, c'est-à-dire que les valeurs contenues dans les variables peuvent
être précédées d'un signe -, ou non. Cela a une incidence sur les différentes
valeurs que l'on peut donner à une variable typée.

Voici les différents types que l'on retrouve en C : 

| Types           | Description                             | Taille        | Valeur minimum | Valeur maximum |
|-----------------|-----------------------------------------|---------------|---------------:|---------------:|
| char            | caractère                               | 1 octet       | -127           | 127            |
| int             | entier                                  | 2 ou 4 octets | -32 767        | 32 767         |
| short           | entier                                  | 2 octets      | -32 767        | 32 767         |
| long            | entier                                  | 4 octets      | -2 147 483 647 | 2 147 483 647  |
| float           | nombre à virgule, 1 chiffre ap virgule  | 4 octets      | 1E-37          | 1E+37          |
| double          | nombre à virgule, 2 chiffres ap virgule | 8 octets      | 1E-37          | 1E+37          |
| unsigned char   | caractère non signé                     | 1 octet       | 0              | 255            |
| unsigned int    | entier non signé                        | 2 ou 4 octets | 0              | 65 535         |
| unsigned short  | entier non signé                        | 4 octets      | 0              | 65 535         |
| unsigned long   | entier non signé                        | 4 octets      | 0              | 4 294 967 295  |

Les valeurs maximales correspondent au minimum de ce que la norme impose à
l'ordinateur de laisser à disposition du programmeur pour un type donné. Il se
peut que l'ordinateur offre plus d'espaces que ce qui est mentionné dans ce
tableau. Pour les types float et double, la virgule est représentée par un
point. Le nombre d'octets de chaque type dépend du compilateur, de ses options
et de l'architecture de la machine.

L'opérateur **sizeof** retourne la taille en bytes de son paramètre. Cette
taille est de type **size_t**, le type char est l'unité de mesure.

Une règle importante, qui rentre en ligne de compte lors des conversions de type
implicites : **sizeof(char) <= sizeof(short) <= sizeof(int) <= sizeof(long) [ <=
sizeof(long long) ]**. Le type long long existe dans le C99, le compilateur peut
émettre une erreur si on lui précise que le C est ANSI. Ces différents types
existent dans le but de mieux gérer les allocations mémoire. C'est pour cela
qu'il y a plusieurs types d'entiers : ils n'occupent pas tous le même espace
mémoire selon leur valeur.

La valeur minimale et maximale des types est définie dans les fichiers d'en-tête
<limits.h> et <float.h>.

Concernant le type char, il est préférable de lui attribuer signed ou unsigned
selon l'utilité que l'on veut en faire. En effet, selon la machine qu'on
utilise, le type peut être signé ou non.

Pour déclarer une variable :

    type nom_variable;
    
    int compteur;
    unsigned int compteur_positif;

Les variables se déclarent au début des fonctions. Lors de la déclaration,
l'ordinateur réserve à la variable un emplacement en mémoire. Si on n'initialise pas
d'emblée une variable, celle-ci a une valeur indéfinie, c'est-à-dire qu'elle
prend la valeur qui était présente en mémoire avant sa déclaration. Si l'adresse
mémoire a été vidée correctement ou n'a jamais été utilisée, la valeur sera 0, sinon ce sera la valeur
précédente, qui peut être 512 ou 4096 ou 67 encore. On ne peut pas être certain
de ce qui se trouve à l'adresse mémoire que prendra notre variable à sa
déclaration. Pour pallier à ce souci, on définit notre variable à sa
déclaration.

    int compteur=0;

C'est d'autant plus valable pour les variables dont la valeur ne devra jamais
changer. Ces variables sont appelées constantes. Si on ne définit pas leur
valeur à la déclaration, on ne pourra pas le faire plus loin dans le code. Le
compilateur affichera une erreur, si on tente de modifier la valeur d'une
constante au cours du programme.

    const int MAXIMUM=100;

Par convention, le nom des variables constantes est écrit en lettres capitales.
On les introduit avec le mot-clé const. Il faut savoir qu'en C, on peut définir
des constantes de 3 façons :
* En passant par une macro `#define CONSTANTE valeur`. Ce n'est pas
  particulièrement recommandé, car de cette façon, c'est au préprocesseur qu'on
  s'adresse.
* En passant par une énumération, on verra sans doute cette façon de faire plus
  loin. C'est préférable à la macro #define, de plus que l'on peut incrémenter
  automatiquement les constantes d'une énumération.
* En passant par le mot-clé **const**, ce que l'auteur du cours a choisi de nous
  présenter.

Pour afficher une variable, en général on utilise la fonction printf définie
dans <stdio.h>. Le fonctionnement est quasiment identique à la fonction printf
de shell.

Pour récupérer une saisie, on utilise, communément, la fonction scanf. Elle
attend un pointeur d'entier, en plus du format vers lequel convertir les
données, le résultat est placé dans la variable pointée :

    int age=0;
    scanf("%d", &age);

`&age`correspond à l'adresse de la variable age. scanf attend une saisie depuis
l'entrée standard, cela permet d'interagir avec l'utilisateur.
### 5. Une bête de calcul
Un ordinateur n'est en fait qu'une calculatrice géante. Les opérations qui lui
sont connues sont très basiques : l'addition +, la soustraction -, la
multiplication *, la division / et le modulo %. Le modulo est l'opération
consistant à récupérer le reste d'une division euclidienne (de deux entiers),
ainsi le modulo n'est pas applicable sur les types float et double.

Il est possible d'effectuer des calculs entre les variables. Il faudra bien
faire attention aux types des variables, en effet, une opération entre deux
types de variables différents aura pour conséquence une conversion implicite des
données vers le type le plus grand. Additionner un int avec un long convertit
l'opérande int en long. Les conversions s'effectuent aussi lors des affectations
: la valeur de la partie droite de l'affectation est convertie dans le type de
la valeur de la partie gauche.

L'incrémentation est l'opération qui consiste à ajouter 1 à une variable. On
écrit `variable++`. La décrémentation est l'opération contraire, on enlève 1 à
une variable : `variable--`. Il existe également des raccourcis pour effectuer
des opérations sur une opérande tout en lui affectant le résultat :

    int nombre = 2;
    nombre += 4; // nombre + 4 = nombre
    nombre -= 3; // nombre - 3 = nombre
    nombre *= 5; // nombre * 5 = nombre
    nombre /= 3; // nombre / 3 = nombre
    nombre %= 3; // nombre % 3 = nombre

Pour avoir accès à des opérations plus élaborées, il suffit de charger en
mémoire la bibliothèque <math.h>. Cette bibliothèque contient les fonctions
suivantes : fabs (abs est accessible depuis la bibliothèque <stdlib.h>, ceil,
floor, pow, sqrt, sin, cos, tan, asin, acos, atan, exp, log et log10 entre
autres.
### 6. Les conditions
Les conditions sont à la base de tous les programmes. C'est un moyen pour
l'ordinateur de prendre une décision en fonction de la valeur d'une variable.

    if (condition)
    {
        // Instructions si condition vraie
    }
    else if (autre condition)
    {
        // Instruction si condition fausse mais autre condition vraie
    }
    else
    {
        // Instruction si toutes les conditions sont fausses
    }

Lorsqu'il y a une seule instruction, on peut omettre les accolades {}. On évite
de tout placer sur une même ligne pour une question de lisibilité.  
Il est courant de combiner plusieurs conditions grâce aux opérateurs de
comparaison.

| Symbole | Signification |
|---------|---------------|
| ==      | est égal à    |
| >       | supérieur à   |
| <       | inférieur à   |
| >=      | supérieur ou égal à |
| <=      | inférieur ou égal à |
| !=      | n'est pas égal à |
| !       | négation |
| &&      | ET logique |
| \|\|    | OU logique |

Les opérateurs de comparaison sont moins prioritaires que les opérateurs
arithmétiques. C'est-à-dire qu'une multiplication ou une addition s'effectuera
avant n'importe quelle comparaison, si elles sont décrites sur la même ligne,
sauf si la comparaison est placée entre parenthèses. Les opérateurs >, >=, < et
<= sont prioritaires sur les opérateurs == et !=. Les opérateurs logiques && (ET
LOGIQUE) et || (OU LOGIQUE) sont moins prioritaires que les opérateurs de
comparaison. && est prioritaire sur ||. Les opérateurs de comparaison ont la
priorité sur les opérateurs d'affectation. Ainsi, si on veut qu'une affectation,
dans un test, se produise en premier, il faut écrire :

    (c = getchar() ) != '\n'

Un opérateur arithmétique, de comparaison ou logique vaut 1 si la relation est
vraie et 0 si elle est fausse.  
Un booléen est une variables qui peut avoir deux états :
- vrai, équivalent au chiffre 1;
- faux, équivalent au chiffre 0.
Toute valeur différente de 0 est en fait considérée comme vraie. On utilise des
**int** pour stocker des booléens, car ce ne sont rien d'autre que des nombres.

    if (1)
    \{
        printf("C'est vrai");
    \}
    else
    \{
        printf("C'est faux");
    \}

Lorsque l'on fait un test comme `if (age >= 18)`, l'ordinateur remplace la
condition par 1 si elle est vérifiée. C'est comme si l'on écrivait `if (1)`. Si
elle est fausse, l'ordinateur remplacera la condiotion par 0 et lira les
instructions données dans la partie else du test. C'est comme si, on écrivait
`if (0)`, la conséquence étant la lecture du else, ou la sortie de la condition
si pas de partie else. Pour s'en rendre compte, on peut faire :

    int majeur = 0;
    majeur = age >= 18;
    printf("Majeur vaut :%d\n", majeur);

La variable majeur aura pris la valeur de 1. Pour obtenir une valeur 0 dans
cette variable, on peut faire :

    majeur = age == 10;

On dit que la variable majeur est un booléen. Pour être tout à fait exact, 0
représente la valeur faux et toutes les autres valeurs numériques différentes de
0 valent vrai. En C, il n'existe pas de type booléen, comme dans d'autres
langages. On passe donc par des int pour simuler cet état.

Cela permet de s'épargner une longueur de frappe. Ainsi 

    if (variable == 1)

est équivalent à 

    if(variable)

On aura tendance à privilégier la dernière syntaxe.

Le switch est une alternative au `if...else if...else` quand il s'agit
d'analyser la valeur d'une variable. Il permet de rendre un code source plus
lisible lorsque l'on a besoin de tester plusieurs cas de figure. Si on utilise
beaucoup de `else if`, c'est souvent le signe qu'une condition `switch` serait plus adaptée
pour rendre le code source plus clair.

    switch (condition)
    {
        case valeur1:
            // Instructions
            break;
        case valeur2:
            // Instructions
            break;
        case valeur3:
            // Instructions
            break;
        ...
        default:
            // Instructions si aucune valeur ne correspond
            break;
    }

Si l'instruction break est omise, l'ordinateur lira les instructions suivantes
sans s'arrêter et sortir de la condition. Le cas `default`correspond au `else`
d'une condition. On utilise souvent le switch pour générer un menu de choix.

Les ternaires sont des conditions très concises, un peu comme les conditions SI
utilisées dans Excel, permettant d'affecter rapidement une valeur à une variable
en fonction du résultat d'un test. On les utilise avec parcimonie car le code
source a tendance à devenir moins lisible avec elles.
Le raisonnement est le même que pour une condition si...else, sauf que tout
tient sur une ligne :

    condition ? valeur si vraie : valeur si faux ;
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
