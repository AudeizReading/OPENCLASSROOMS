# Condition if (type le plus courant) / elif /else
if [[ $# -eq 0 ]]
    # Test sur les nombres
    # $num1 -eq $num2 -> Vérifie si $num1 est égal à $num2
    # $num1 -ne $num2 -> Vérifie si $num1 n'est pas égal à $num2
    # $num1 -lt $num2 -> Vérifie si $num1 est inférieur à $num2
    # $num1 -le $num2 -> Vérifie si $num1 est inférieur ou égal à $num2
    # $num1 -gt $num2 -> Vérifie si $num1 est supérieur à $num2
    # $num1 -ge $num2 -> Vérifie si $num1 est supérieur ou égal à $num2
then
    message="Ce script n'a pas de paramètres."
elif [[ $# -eq 1 ]]
then
    message="Ce script a un seul paramètre."
else
    message="Ce script a $# paramètres."
    
    # Condition test (chaînes de caractère, nombres et fichiers)
    # $var1 = $var2 -> Vérifie si les deux chaînes sont identiques
    # $var1 != $var2 -> Vérifie si les deux chaînes ne sont pas identiques
    # -z $var1 -> Vérifie si la chaîne est vide
    # -e $var1 -> Vérifie si la chaîne est non vide
    if [[ $1 != $2 ]]
    then
        message="$message\nLe paramètre \$1 : $1 et le paramètre \$2 : $2 sont différents"
    else
        message="$message\nLes deux premiers paramètres sont identiques : $1 = $2."
    fi
fi

echo -e "$message"

# Test sur les fichiers
if [[ -x $0 ]] && [[ -f $0 ]]
then
    echo "$0 est un fichier exécutable"
else
    echo "$0 n'est pas un fichier exécutable"
fi
# -e $file -> Vérifie si le fichier existe
# -d $file -> Vérifie si le fichier est un répertoire
# -f $file -> Vérifie si le fichier est un fichier
# -L $file -> Vérifie si le fichier est un lien symbolique
# -r $file -> Vérifie si le fichier est lisible (droits de lecture activés)
# -w $file -> Vérifie si le fichier est modifiable (droits d'écriture activés)
# -x $file -> Vérifie si le fichier est exécutable (droits d'exécution activés)
# $file1 -nt $file2 -> Vérifie si $file1 est plus récent que $file2
# $file1 -ot $file2 -> Vérifie si $file1 est plus ancien que $file2

read -p "Entrez un nom de répertoire :" rep

if [[ -d $rep ]]
then
    echo "$rep est bien un répertoire"
else
    echo "$rep n'est pas un répertoire"
    # Inverser un test
    if [[ ! -e rep ]]
    then
        echo "$rep n'existe pas !"
    fi
    rep="inconnu"
fi

# Case : tester plusieurs conditions à la fois

case $rep in
    "/home")
        echo "$rep est le répertoire de l'utilisateur"
        ;;
    "/bin")
        echo "$rep est le répertoire de tous les fichiers binaires de l'ordinateur"
        ;;
    "inconnu")
        echo "Le répertoire est $rep."
        ;;
    *)
        echo "Ce cas n'est pas traité."
        ;;
esac
