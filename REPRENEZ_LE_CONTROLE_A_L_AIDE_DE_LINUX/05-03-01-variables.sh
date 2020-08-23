#!/bin/bash

# Définition d'une variable : elle possède un nom et une valeur.
message="Bonjour tout le monde"
echo 'Le message est $message - simple quotes'
echo "Le message est $message - double quotes"

rep_courant=`pwd`
echo "Vous êtes dans le répertoire $rep_courant - back quotes"

# Saisie utilisateur
read -p "Entrez votre nom et votre prénom :" nom prenom
echo "Bonjour $prenom $nom."

# Opérations mathématiques
let "a = 5"
let "b = 2"
let "c = a + b"

echo "$c"

# Opérations utilisables :
let "a=5*3"; echo "Résultat de 5 * 3 = $a" # Multiplication
let "a=4**2"; echo "Résultat de 4 ** 2 = $a (4²)" # Puissance - carré de 4
let "a=8/2"; echo "Résultat de 8 / 2 = $a" # Division
let "a=10/3"; echo -e "Résultat de 10 / 3 = $a\n let ne gère pas les nombres décimaux, le résultat de la division est arrondi à l'entier inférieur (au résultat, qui est : 3,333333...)" # Division avec un résultat non entier
let "a=10%3"; echo -e "Résultat de 10 % 3 = $a\n Modulo : reste de la division, ici 10 / 3, comme le résultat de la division est donné en entier, alors le reste est 1."

# On peut utiliser des contractions de commandes :
let "a *= 3"; echo -e "Résultat de a(1) *= 3 = $a"

# Pour des opérations sur des flottants, utiliser la commande bc

# Variables d'environnement. On utilise export pour définir sa propre variable d'environnement
echo -e "Shell en cours d'utilisation : SHELL = $SHELL;\nListe des répertoires contenant des exécutables : PATH = $PATH;\nÉditeur de texte par défaut : EDITOR = $EDITOR;\nPosition du répertoire utilisateur : HOME = $HOME;\nLe dossier dans lequel on se trouve : PWD = $PWD;\nLe dossier dans lequel on se trouvait précédemment : OLDPWD = $OLDPWD."

# Paramètres positionnels, variables de script
echo "Il y a $# paramètres positionnels"
while [[ $# -ne 0 ]]; do {
    let i++ # Incrémente la variable en partant de 0 -> Que ça qui a fonctionné avec let.... grrrrr
    echo "Le paramètre n°$i vaut $1"
    shift # $2 devient $1 si existant
    echo "Il reste $# paramètres à parcourir"
} done

# Les tableaux (arrays)
tableau=("valeur 0" "valeur 1" "valeur 2")
tableau[5]="valeur 5"
# Affiche les indices du tableau
echo "Indices du tableau : ${!tableau[@]}"
# Boucler sur un tableau dont les indices sont discontinus
for j in "${!tableau[@]}"
do
    echo "j : $j => \$\{!tableau[j]\} : ${tableau[j]}"
done


