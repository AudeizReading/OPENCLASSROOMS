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
### 3. Votre premier programme
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
