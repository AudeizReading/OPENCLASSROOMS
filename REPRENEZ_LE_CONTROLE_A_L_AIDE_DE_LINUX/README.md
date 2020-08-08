# REPRENEZ LE CONTRÔLE A L'AIDE DE LINUX
## 1ère Partie
### Mais c'est quoi, Linux ?
#### Un système d'exploitation
#### La naissance de Linux
#### Les distributions de Linux
#### Résumé personnalisé
On a un aperçu de ce qu'est Linux (un OS) et de comment il démarre sur l'ordinateur (Boot Loader, GRUB) dans le 1er chapitre.

Dans le second chapitre, on traite du projet GNU (Richard STALLMANN 1984, création des programmes), de la création du noyau par Linus TORVALDS (1991), UNIX duquel découle GNU/Linux ainsi que Mac OS.

Les distributions sont abordées dans le 3e chapitre (Slackware, Mandriva, Red Hat, SuSE, Debian...). Debian est la seule distro éditée par des particuliers bénévoles. Un des gros avantages de Debian est son gestionnaire de paquets **apt-get**. Ubuntu est une distribution de Debian. Le cours se déroulera sur Ubuntu.
### Téléchargez Linux c'est gratuit
#### Les deux visages de Linux
#### Télécharger et graver le CD
#### Résumé personnalisé
Dans le 1er chapitre, on nous présente le mode console et le mode graphique de Linux, et donc par conséquent d'Ubuntu. Il y a plusieurs modes graphiques, tous basés sur le programme X. Le gestionnaire de bureau est une surcouche de X, il gère les fenêtres. Il en existe plusieurs. Les plus connus sont Unity, Gnome, KDE et XFCE. Par défaut Ubuntu est livré avec Unity. Si une distro Ubuntu est préfixée alors, la distro est configurée avec un gestionnaire de bureau spécifique (Kubuntu -> KDE, Xubuntu -> XFCE ...). On peut installer plusieurs gestionnaires sur une distro, tous étant compatibles entre eux. Par conséquent, les programmes fonctionnent tous quel que soit le gestionnaire installé. La console reste la même, peu importe le gestionnaire de bureau utilisé.

Le second chapitre explique comment récupérer l'ISO (fichier .iso) et le graver sur DVD (il faudra installer un outil de gravure d'image disque).
### Tester et installer Ubuntu
#### Installation de Linux depuis Windows
#### Premier démarrage d'Ubuntu
#### Installer Ubuntu
#### Résumé personnalisé
Où on apprend que l'on peut tester Linux sans l'installer sur Windows. Pour cela, on utilise le mode Live CD. Ubuntu se chargera à partir du CD qu'on vient de graver dans la mémoire vive, et non par le disque dur.

Le 1er chapitre nous montre comment installer Linux sur Windows. Sauf que le cours date un peu, et depuis, Windows 10 met à disposition une application Ubuntu sur son store. Néanmoins, pour la tester personnellement, il y a encore des petites différences entre WSL et Linux (notamment dans les commandes en CLI).

Le second chapitre nous propose donc de tester Ubuntu sans installation, uniquement en chargeant le DVD.

Le troisième chapitre nous apprend à installer Linux en dur.
On y apprend également que Firefox, à la base, était prévu pour Gnome, mais est parfaitement utilisable sur KDE ou Unity.
Il faut toujours faire une sauvegarde de ses fichiers avant d'installer Linux, car malgré tout il existe un risque infime d'écraser Windows. On ouvre ensuite l'icône d'installation qu'on trouvera sur le bureau, alors qu'on est en mode test de Linux. Ensuite, il suffit de se laisser guider. Néanmoins, il convient d'avoir un minimum d'espace de stockage, d'être branché sur secteur et d'être connecté à Internet (pas en wifi, compliqué à configurer à ce stade quand on est débutant). Deux options peuvent être cochées : * Télécharger les mises à jour pendant l'installation * ainsi que * Installer ce logiciel tiers *. La dernière option nous permettra d'utiliser des logiciels propriétaires non livrés avec Ubuntu tels que ceux lisant du MP3, du Flash (lol, le cours n'est vraiment pas à jour !) etc. À moins que l'on ne préfère garder Ubuntu entièrement Open Source. Ensuite, il faut partitionner son disque, mais c'est l'objet du chapitre suivant.
### Partitionner son disque
#### Défragmentez votre disque
#### Qu'est-ce que le partitionnement
#### Prêts ? Partitionnez !
#### La fin de l'installation
#### Résumé personnalisé
Partitionner son disque consiste à découper son disque virtuellement en plusieurs parties afin de ne pas mélanger les différents OS se trouvant sur la machine. Il est délicat de faire marche arrière une fois le partitionnement réalisé, il faut donc être attentif à ce qui est décrit dans cette partie du cours. Mais avant il faut défragmenter son disque.

La défragmentation ne concerne que les disques durs HDD (mémoire de masse magnétique). Si on a un disque SSD (mémoire flash), il ne faut surtout pas défragmenter son disque dur !. Un disque dur ne doit jamais être ouvert, sous peine d'endommager ses données. la défragmentation consiste à mieux organiser les fichiers sur son disque dur, à les rassembler pour éviter qu'ils ne soient éparpillés. Ainsi le disque dur mettra moins de temps à récupérer les fichiers. Cette réorganisation prépare au partitionnement, si on ne le fait pas, il y a un risque que des fichiers disparaissent lors de cette étape et de se retrouver avec un Windows instable.

Sur chaque partition, les fichiers sont organisés selon ce qu'on appelle un **système de fichiers** , un référencement dans une sorte d'annuaire gigantesque. Il ne peut y avoir qu'un système de fichiers par partition.

Les différents systèmes de fichiers sous Windows sont FAT 16, FAT 32, NTFS (c'est celui utilisé sur les PC les plus récents avec Windows). Ceux de Linux sont **ext2**, **ext3** et **ext4**. **ext4** est plus récent mais beaucoup utilisent encoure **ext3**. Sous Linux, il n'y a pas besoin de faire de défragmentation car les systèmes de fichiers sont optimisés pour cela.

Le cours nous propose le partitionnement suivant :

| Linux | Windows | Documents |
|:------|:-------:|----------:| 
| ext4  | NTFS    | ext4      |

Le but étant que la partition Documents puisse être lue et écrite depuis Windows et Linux. Windows ne reconnaît pas ext, à moins d'installer un programme spécialement pour.

Ceci étant posé, on repart depuis les explications de la fin du chapitre dernier pour passer au partitionnement. Ubuntu propose tout de façon explicite dans ses fenêtres, il suffit de se laisser guider. On peut choisir d'installer Ubuntu à côté de Windows. C'est l'option la plus simple quand on débute, Ubuntu se charge de tout. En revanche on n'aura pas de partition **Documents**. On ne prendra pas l'option de remplacer Windows, pour des raisons évidentes (ça casse tout Windows !), mais on choisira de définir les partitions manuellement; c'est la plus complexe mais c'est celle qui nous laissera créer la fameuse partition où l'on rangera nos documents.

Sous Windows, les disques s'appellent C:, D:, E: ... Sous Linux, c'est différent. Par exemple, un disque peut s'appeler **hda**

* h : La première lettre indique le type du disque (différents selon la connexion à la carte mère) IDE ou SCSI (ou S-ATA). Si c'est un type IDE, alors ce sera un "h", si c'est un type SCSI, alors ce sera "s".
* d : Cette lettre ne change jamais.
* a : C'est cette lettre qui indique les différents disques durs, a pour le 1er, b pour le 2e, c pour le 3e, etc.

Les partitions sont numérotées, on les retrouvera dénominées de la sorte **hda1** ou **hda2** etc, selon leur nombre de créés. Ne pas toucher aux partitions "restore", car le PC est peut-être "tatoué".

De là, une fois le disque choisi, on passe à l'étape suivante qui consiste à réduire la taille de la partition de Windows. Il faut quand même lui laisser un peu de place, sinon on ne pourra plus rien installer par cette voie.

On vient de libérer de la place pour la partition Ubuntu, on peut cliquer sur **Nouvelle table de partition**. On aura le choix ente deux types de partition: primaire (seulement 4 par disques) ou logique (non limitée, peut contenir plusieurs sous-partition). Cocher sur Début pour l'emplacement, afin de la créer au début de l'espace libre. Enfin, on indique le point de montage "/" (équivalent de "C:\" sous Windows). On n'oublie de mentionner le système de fichiers, ni d'allouer de l'espace. On recommence de la même façon pour la partition "Documents", sauf que le point de montage sera "/home". Enfin, il faut créer une partition **swap** d'environ 1Go (1024 Mo). Pour faire simple, il s'agit d'une extension de la mémoire vive sur son disque dur, lorsque la mémoire vive est pleine, Linux continue à fonctionner mais passe par le disque dur, grâce à cette partition (bien préciser que c'est un espace d'échange swap dans "Utiliser comme:", pas besoin d'en préciser le point de montage.

L'installation s'effectue, enfin, en tâche de fond pendant que l'on finalise les derniers détails (fuseau horaire, type de clavier, username & mdp). Il se peut également que le gestionnaire d'installation nous propose de récupérer quelques informations depuis Windows.

Comme partout, on redémarre pour finaliser l'installation. Juste avant l'extinction du PC, il faudra retirer le CD du PC comme demander puis appuyer sur <CR>. C'est pour s'assurer qu'Ubuntu démarrera bien du disque dur et non du CD.

Au prochain démarrage, GRUB demander quel OS utiliser. Pour faire un test mémoire, au cas où on suspecte une défaillance de la mémoire vive, on choisira "Memory Test".
### Découverte du bureau Unity
#### Bienvenue sur le bureau Unity
#### Nautilus, l'explorateur de fichiers
#### Gestion des programmes
#### Résumé personnalisé
Découverte du gestionnaire de bureau Unity livré avec Ubuntu. Si on a installé autre chose, on peut lancer le paquet **ubuntu-desktop** pour l'installer.

Linux est un OS multiutilisateur, plusieurs personnes peuvent utiliser le même ordinateur de façon simultanée (en le contrôlant à distance par Internet, par exemple). C'est pourquoi il est important de se logger/délogger avec cet OS.

L'explorateur de fichier s'appelle Nautilus, il est du même type que l'explorateur Windows.

Pour ajouter et/ou supprimer un programme, il faut se rendre dans la logitèque Ubuntu (ressemble au Store Windows, ou plutôt l'inverse...).

Lorsqu'une mise à jour d'un programme est disponible, on est immédiatement notifié à l'aide de l'icone en haut à droite de l'écran (ressemble au symbole téléchargement mais dans une étoile). On clique dessus et on se laisse guider. On peut aussi configurer le gestionnaire de mises à jour, afin qu'il installe les nouveautés sans nous le demander. Il faut se rendre dans le menu Applications --> Ajouter & Enlever --> Préférences --> Mises à jour --> Installer les mises à jour de sécurité sans confirmation.
### Découverte du bureau KDE
#### Comment obtenir KDE
#### Connexion au bureau KDE
#### Le tableau de bord
#### L'explorateur de fichiers Dolphin
#### Résumé personnalisé
Le gestionnaire de bureau KDE est utilisé par défaut sur Kubuntu. KDE est assez différent de Unity. Pour l'installer plusieurs possibilités soit on se contente du KDE minimal, avec seulement les applications de base, alors le paquet à installer est **kde-minimal**, on l'appelle également environnement de bureau K, applications minimales, soit on prend le KDE complet avec les applications qui sont dédiées à cet environnement et alors le paquet est **kubuntu-desktop**, aussi appelé Kubuntu Plasma Desktop System. Ne nous est montré que l'installation par l'interface graphique.

Il faudra se logger pour accéder à KDE. Les interfaces de login, selon qu'on ait installé KDE par Ubuntu ou qu'on ait installé Kubuntu, sont légèrement différentes visuellement. Néanmoins leur fonctionnement reste identique. L'interface de connexion de Kubuntu s'appelle KDM, pour KDE Display Manager. On peut personnaliser le bureau de **widgets** appelés "Plasmoïdes". La barre des tâches se trouvant en bas de l'écran s'appelle **le tableau de bord**. C'est de là qu'on lance ses applications. On y retrouve le menu K (le bouton Démarrer de Windows 10 y ressemble fortement). Si le menu est en anglais, bah ça ne vous fera pas de mal de l'apprendre. Non, je déconne, on peut changer ses préférences de langues en tapant "lang" dans la barre de recherche, en accédant ensuite au programme "Country & Region Language". Pour que les changements soient pris en compte, il faut se déconnecter puis se connecter à KDE.

Dolphin est l'explorateur de fichiers et Konqueror le navigateur web, il permet aussi de parcourir ses fichiers. L'explorateur QuickAccess ouvre directement le répertoire personnel sans passer par Dolphin. Comme sur Unity, on peut avoir plusieurs bureaux virtuels. La zone de notifications se situe en bas à droite, comme avec Windows 10. Inutile de double-cliquer avec l'explorateur Dolphin. L'équivalent du panneau de configuration sous Windows est "Configuration du système". La logitèque KDE s'appelle "Ubuntu Software Center".
### Installez Linux dans une machine virtuelle
#### Installer VirtualBox
#### Créer une nouvelle machine virtuelle
#### Lancer la machine virtuelle
#### Installation des additions invité
#### Résumé personnalisé
La virtualisation consiste à faire tourner un ordinateur virtuel dans son ordinateur, cela permet de lancer Linux à l'intérieur d'une fenêtre Windows ou vice versa. VirtualBox est un logiciel libre nous permettant de virtualiser un OS dans un autre. L'avantage est que, si Linux est lancé dedans, alors il sera isolé dans la machine virtuelle et ne risque pas d'altérer le fonctionnement de Windows.

On retrouve ce programme sur son site Internet. Il existe en version Windows, Linux et Mac OS X. Bien entendu, la version dans laquelle on lancera la machine virtuelle. À l'installation, laissez les choix par défaut. Il se produira une rupture temporaire de l'accès à Internet, c'est normal, le programme doit établir un pont de connexion entre l'ordinateur et la machine virtuelle. L'interruption est succinte. Puis l'installation se lance toute seule, il ne reste plus qu'à lancer VirtualBox.

Les machines virtuelles consomment de la mémoire vive, de l'espace disque et utiliseront le processeur du PC, il vaut mieux avoir un ordinateur puissant, mais la plupart des ordinateurs modernes n'auront pas de soucis pour utiliser VirtualBox.

Pour créer une nouvelle machine, on clique sur le bouton en haut à gauche **Nouvelle**. On nous demandera de lui donner un nom ainsi que de confirmer l'OS et sa version (Linux, Ubuntu pour ceux au fond qui n'auraient pas suivi). VirtualBix est capable d'émuler une multitude d'OS de Windows à Linux, en passant par Solaris, mais il faut quand même soit le CD d'installation, soit l'image disque pour qu'il arrive. On indique la quantité de RAM qu'on souhaite lui destiner, VirtualBox peut occuper jusqu'à 50% de la mémoire vive d'un ordinateur. Enfin, il ne reste plus qu'à créer le disque dur de la machine virtuelle, laissez donc "Créer un nouveau disque dur" de sélectionné. L'assistant de création nous demande ensuite quel type d'image disque on souhaite créer. Soit image de taille variable, soit image de taille fixe. Il est recommandé de choisir la taille variable, ainsi si le disque a une taille de 8 Go et que 2 Go sont utilisés, alors le fichier fera 2 Go. Autrement, en taille fixe, si le disque virtuel a une taille de 8 Go et que seulement 2 Go sont utilisés, le fichier image fera tout de même 8 Go. On est ensuite invité à nommer le disque virtuel (emplacement) ainsi qu'une taille maximale. 8 Go est une bonne alternative (si on les a).

Avant de lancer la machine virtuelle, il faut donc son image disque (ou CD d'installation), exactement comme si on démarrait l'ordinateur pour y installer Linux. Si on possède le CD, alors l'insérer dans le lecteur, sinon VirtualBox est capable de lire directement une image disque **.iso**, mais pour cela il faudra configurer la machine virtuelle pour qu'elle utilise l'image disque comme un CD. On clique sur la machine virtuelle qu'on vient de créer, puis **Configuration**, sélectionner **Stockage** à gauche, puis la ligne **Vide** sous **Contrôleur IDE**. Enfin, cliquer sur l'icone en forme de dossier tout à droite (à côté de Lecteur CD/DVD : Vide), le gestionnaire de médias virtuels s'ouvre. Il suffit alors de cliquer sur **Ajouter** puis d'indiquer ou se situe l'image ISO téléchargée. On valide et c'est prêt.

On peut enfin démarrer la machine virtuelle (on clique sur son nom, puis **Démarrer** au-dessus, à côté de **Configuration**). Pour sortir de la machine virtuelle (toutes les frappes clavier y seront redirigées), on appuie sur la touche **Ctrl** la plus à droite sur le clavier.

On peut alors installer Ubuntu, sans avoir besoin de créer des partitions sur son disque dur. c'est la magie de la virtualisation.

Les additions invité sont des pilotes spéciaux améliorant les performances de la machine virtuelle, comme de meilleures performances graphiques, une plus grande fluidité des animations et des déplacements des fenêtres; un meilleur suivi de la souris; le partage du presse-papier entre Linux et Windows ainsi que le partage des répertoires (ce qu'on ne peut pas faire en dur, si on n'a pas de partition prévue pour les documents). On se rend dans le menu de la machine virtuelle, une fois démarrée, **Périphériques --> Installer les Additions invité**. Cela provoque l'insertion d'un CD virtuel dans la machine. pour accéder à son contenu, on ouvre le menu **Raccourcis** d'Ubuntu, une fenêtre affichant les fichiers du CD apparaît, cliquer sur **autorun.sh** et **Lancer dans un terminal** lorsqu'on nous demande quoi en faire. Une console s'ouvre et les additions s'installent. Comme d'habitude, il faut relancer Ubuntu pour que les modifications soient prises en compte. Maintenant, on peut partager des fichiers entre WIndows et Ubuntu, toujours dans le menu **Périphériques --> Dossiers Partagés**.
### Quiz 1
#### Compétences évaluées
Décrire le fonctionnement d'un système d'exploitation Linux
#### Question 1
**Comment s'appelle l'outil qui permet de sélectionner le système d'exploitation qu'on souhaite lancer au démarrage ?**
* Le booter
* Le Boot Loader
* L'OS Downloader
* Le rebouteur
#### Question 2
**Vrai ou Faux ? Windows et Linux peuvent cohabiter sur un même ordinateur.**
* Vrai
* Faux
#### Question 3
**Comment s'appelle le fondateur du projet GNU ?**
* Richard Stallman
* Roberto Benigni
* Steve Jobs
* Bill Gates
#### Question 4
**Quel est l'ancêtre commun de Mac OS X et Linux ?**
* Lunix
* Unix
* MS-DOS
* Windows
#### Question 5
**Lequel de ces éléments est une distribution Linux ?**
* Debian
* Grub
* KDE
* Gnome
#### Question 6
**Comment s'appelle l'interface graphique par défaut d'Ubuntu ?**
* Ubuntux
* KDE
* LXDE
* Gnome, Unity, puis Gnome de nouveau selon les versions
#### Question 7
**Qu'est-ce qu'un Live CD ?**
* Un CD qui donne accès à Internet même dans les régions reculées
* Un CD contenant Linux qui apprend de nos habitudes
* Un CD permettant de tester Linux sans l'installer
* Un CD qui s'autodétruit au bout de quelques minutes
#### Question 8
**Quand Linux est installé dans une machine virtuelle qui tourne sous Windows...**
* Une partition spéciale Linux est créée sur son disque dur de façon permanente
* Une partition spéciale Linux est créée sur son disque dur de façon temporaire
* Aucune partition n'est créée
#### Question 9
**Comment s'appelle l'élément logiciel de base sur lequel s'appuient Gnome, XFCE, KDE et Unity pour afficher une interface graphique ?**
* Le GRUB
* Le serveur X
* Le partitionneur graphique
#### Question 10
**Quel est le rôle de la partition swap ?**
* Stocker les outils nécessaires au démarrage de Linux
* Stocker les fichiers téléchargés depuis Internet
* Stocker des données quand la mémoire vive est pleine
## Partie 2
### La console, ça se mange ?
#### Pourquoi avoir inventé la console ?
#### La console, la vraie, celle qui fait peur
#### La console en mode graphique
#### L'accès à distance en SSH avec PuTTY
#### Résumé personnalisé
La console a été inventée d'abord, à la place d'une interface graphique, car on n'avait pas d'autres solutions, à l'époque, au début des années 70, pour communiquer avec l'ordinateur. À l'époque, un écran 2 couleurs était un luxe et la puissance de calcul de ces ordinateurs était insuffisante (en comparaison avec ce que nous connaissons aujourd'hui) pour pouvoir gérer plusieurs composants en même temps, comme la couleur et une souris. La console était donc la seule façon d'utiliser un ordinateur.

Les commandes de la console ont été conçues afin de pouvoir les manipuler souvent, leurs noms sont courts (dans la majorité des cas) les lettres qu'il faut taper sont généralement choisies en fonction de leur proximité les unes par rapport aux autres, sur un clavier QWERTY. Le clavier QWERTY est plus adapté pour accéder aux symbole **\{\]\|\#**.

Il y a des choses que seule la console est en mesure d'accomplir, par exemple savoir combien d'images .jpeg contient un répertoire. On obtient ce résultat en combinant quelques commandes :

    ls -l | grep jpg | wc -l
    510

La console a donc encore son utilité !

La plupart des commandes de la console de Linux sont des copies d'Unix, les programmes ont été réécrits mais leur mode d'emploi est le même. Quelqu'un qui utilisait Unix dans les années 60 sera capable de se débrouiller avec un Linux d'aujourd'hui. Dans les chapitres suivants, c'est ce qu'on verra : les commandes de types Unix. L'avantage, c'est qu'on pourra s'en servir sur les systèmes Linux, mais également sur tous ceux descendant d'Unix (Hein, Mac OS X...). On ouvre un terminal sous Mac OS X avec le raccourci **Cmd + Shift + U** pour ouvrir les utilitaires et on sélectionne Terminal.

Les raccourcis pour accéder à une console Linux sont
* **Ctrl + Alt + F1** : terminal 1 (tty1)
* **Ctrl + Alt + F2** : terminal 2 (tty2)
* **Ctrl + Alt + F3** : terminal 3 (tty3)
* **Ctrl + Alt + F4** : terminal 4 (tty4)
* **Ctrl + Alt + F5** : terminal 5 (tty5)
* **Ctrl + Alt + F6** : terminal 6 (tty6)
* **Ctrl + Alt + F7** : retour au mode graphique

La première chose que demande la ligne de commande c'est de se logger grâce à la commande **login** (log qu'on a créé à l'installation d'Ubuntu). On entre ensuite son mot de passe, c'est la commande **passwd** qui le reçoit. Les lettres n'apparaissent pas pour raison de sécurité. Une fois l'étape franchie, la CLI devrait afficher quelque chose dans le style : **username@computer:~$**.

Pour savoir dans quel terminal on se trouve (puisqu'on peut en ouvrir 6) lors du chargement, il faut lire dans la console les informations inscrites au lancement et chercher un terme commençant par **tty[n°]**. Attention, pour relancer X (le serveur graphique), le raccourci est **Alt + Shift + Backspace** ou **Alt + Impr.Écran + K**, la commande précédente étant jugée vraiment très dangereuse,, cela ne redémarre que l'interface graphique, les consoles continuent de tourner mais on perd tout ce qu'on était en train de faire sur le bureau. Il faut donc être vigilant.

La console est très utile lorsqu'on manipule les serveurs tournant sous Linux et ne possédant pas d'écran ou d'interface graphique. C'est juste plus confortable d'utiliser la console en mode graphique.

Une des grandes force de la console, c'est d'ête accessible à distance par Internet. Il suffit que la machine sur laquelle on souhaite se connecter soit connectée au réseau pour pouvoir y pénétrer depuis n'importe quel autre ordinateur. C'est comme cela d'ailleurs que l'on administre un serveur.

Un serveur est, pour faire simple, un ordinateur tout le temps connecté à Internet. Il permet d'offrir des services divers et variés aux internautes. Par exemple, il y a des serveurs web dont le rôle est de distribuer des pages web. La grande majorité des serveurs tournent sous Linux. Il existe des serveurs Windows, mais ils seraient plus rares et on apprécie en général la stabilité de Linux, ainsi que la possibilité de l'administrer à distance en ligne de commande.

Pour communiquer entre un ordinateur et un serveur, on passe par un protocole. Il en existe énormément, mais pour accéder à la ligne de commande à distance, il y en a deux principaux :
* **Telnet** : le protocole le plus basique, qui présente le gros défaut de ne pas crypter les données échangées.
* **SSH** : c'est le protocole le plus utilisé car il permet de crypter les données et de sécurise la connexion avec le serveur.

pour accéder à distance à un ordinateur sous Linux connecté au réseau, on a besoin d'un programme spécial capable de restituer la ligne de commande à distance. On n'est pas obligé d'être sous Linux pour ce faire, on peut très bien être sous Windows. Il existe plusieurs programmes capables de se connecter en SSH à serveur Linux, le plus célèbre sous Windows est sûrement PuTTY : il est gratuit, léger et ne nécessite pas d'installation, seulement un exécutable à lancer. On se rend sur le site du logiciel, on le downloade, puis on clique sur **putty.exe**. La fenêtre de configuration s'affiche. Dans la majorité des cas, on n'aura pas besoin d'aller farfouiller dans le volet des options à gauche. La première page est la plus importante, dans le champ **Host Name**, on renseigne le nom d'hôte du serveur (du style : nom.de.domaine.com), ou l'adresse Ip de la machine à laquelle se connecter. Vérifier que la connexion est bien de type SSH, puis cliquer sur le bouton **Open** en bas de la fenêtre. Il est tout à fait possible de se connecter à plusieurs serveurs différents et de conserver le nom d'hôte quelque part, dans la seconde partie de la fenêtre **Saved Sessions** c'est là que ça se passe.

À la première connexion, on nous demander si on veut stocker l'empreinte de ce dernier. C'est une sécurité pour vérifier que le serveur n'a pas changé depuis la dernière connexion et donc pour éviter que quelqu'un se fasse passer pour le serveur auquel on se connecte d'habitude. La fenêtre principale de PuTTY s'affiche alors en nous demandant de nous logger (log du compte administrant le serveur !) et de saisir le mot de passe associé. On alors accès à la console du serveur, comme si on était devant. Dans l'immédiat, on ne devrait pas avoir à se connecter à distance, tout ce qu'on va faire est plutôt situé en local.
### Entrer une commande
#### L'invite de commandes
#### Commandes et paramètres
#### Retrouver une commande
#### Quelques raccourcis clavier pratiques
#### Résumé personnalisé
La première action à entreprendre, c'est d'ouvrir une console en mode graphique. La ligne de type **username@(@=chez)computer:~(dossier dans lequel on se situe, ~=/home)$(niveau d'autorisation sur la machine, $=utilisateur normal,#=superutilisateur)** est ce qu'on appelle une **invite de commande**, c'est un message qui nous invite à entrer une commande. L'invite de commande est paramétrable (-> .bashrc, variable $PS1).

On travaille dans la console en tapant des commandes. Elles sont très nombreuses, tellement qu'on ne peut pas toutes les connaître. Mais c'est plus important de savoir comment s'informer dessus que de toutes les connaître. Pour cela, il suffit de consulter le manuel d'utilisation **man**, ou encore l'aide de la commande **commande --help** ou encore **commande -h** (mais cette dernière n'est pas toujours paramétrée).

La commande **date** donne la date et l'heure.
La commande **ls** donne la liste des fichiers et dossiers du répertoire actuel. Si on n'obtient pas de réponse à cette commande, c'est qu'on est dans un dossier ne contenant aucun fichier.

Une commande est constituée d'un mot et ne contient aucun espace et dans la majorité des cas d'options qu'on appelle **paramètres** (courts ou longs). Les paramètres (comme tout Linux) sont sensibles à la casse.
**ls -a** affiche tous les dossiers, même ceux cachés. Le nom d'un fichier caché commence par un **.**
**ls --all** fait la même chose, sauf qu'on a utilisé son paramètre long.

Parfois, les paramètres nécessitent d'être valorisés (auxquels on affecte une valeur), selon que le paramètre soit long ou court, l'affectation est différente.
* **commande -a valeur**
* **commande --version-longue=valeur**

Il arrive d'oublier le nom d'une commande, mais grâce à l'auto-complétion, Linux nous aide à la retrouver: On tape au moins une lettre de la commande, puis 2 fois sur la touche **Tabulation**. S'il n'y a qu'un seul résultat qui ressort, alors la commande se complètera toute seule, il n'y aura qu'à la valider avec **Entrée**. S'il y a plus possibilités et qu'on accepte de les visualiser (**y**), alors pour naviguer, on utilisera **espace** pour passer à la page suivante, **Entrée** pour aller à la ligne suivante et **q** pour arrêter la liste. Pour naviguer dans l'historique des commandes, on utilise la touche **Flèche Haut** ou **Flèche Bas**. La commande **history** affiche l'ensemble de l'historique, ainsi que leur ordre de frappe. Parfois, ces dernières instructions ne sont pas suffisantes pour accéder à ce dont on a besoin, on peut faire une recherche de terme grâce à la combinaison de touche **Ctrl + R + "terme recherché"**. On rappuie sur **Ctrl + R** jusqu'à ce qu'on trouve ce que l'on cherchait. On valide la sélection avec *Entrée*, attention cela lance la commande dans le terminal!

Quelques raccourcis claviers : 
* **Ctrl + L** : efface le contenu de la console (la commande **clear** fait la même chose)
* **Ctrl + D** : envoie le message **EOF** (end of file) à la console. Si on tape  le raccourci dans une ligne de commande vide, cela fermera la console (la commande **exit** a le même comportement)
* **Shift + PgUp** : permet de remonter dans les messages envoyés par la console.
* **Shift + PgDown** : permet de redescendre dans les messages envoyés par la console.
* **Ctrl + A** : ramène le curseur au début de la commande. La touche **origin** a le même effet.
* **Ctrl + E** : ramène le curseur à la fin de la ligne de commande. La touche **fin** a le même affet.
* **Ctrl + U** : supprime tout ce qui est à gauche du curseur.
* **Ctrl + K** : supprime tout ce qui est à droite du curseur.
* **Ctrl + W** : supprime le premier mot situé à gauche du curseur. Un mot est séparé par des espaces; on s'en sert en général pour supprimer le paramètre situé à gauche du curseur.
* **Ctrl + Y** : si on a supprimé du texte avec un des raccourcis ci-dessus, collera le texte supprimé.
### La structure des dossiers et fichiers
#### Organisation des dossiers
#### pwd & which : où... où suis-je ?
#### ls : lister les fichiers et dossiers
#### cd : changer de dossier
#### du : taille occupée par les dossiers
#### Résumé personnalisé
Les choses ne fonctionnent pas du tout de la même manière sous Linux et sous Windows. Sous Linux, on ne trouve pas de **C:\**, **D:\** etc. Au lieu de séparer chaque disque dur, lecteur de CD, de disquettes, cartes mémoires, Linux place en gros tout au même endroit.

Pour faire simple, il existe deux types de fichiers sous Linux :
* Les fichiers classiques : ce sont les fichiers textes (.txt, .doc, .odt ...), les sons, mais aussi les programmes.
* Les fichiers spéciaux : certains fichiers sont spéciaux car ils représentent quelque chose. Par exemple, le lecteur CD de l'ordinateur est un fichier pour Linux, là où Windows fait la distinction. Pour Linux, **tout** est fichier. C'est une conception très différente.

Dans un système de fichiers, il y a toujours ce qu'on appelle une racine, c'est un *gros dossier de base qui contient tous les autres dossiers et fichiers*. Sous Windows, il y a plusieurs racines. **C:\** est la racine du disque dur, **D:\** celle du lecteur CD (par exemple). Sous Linux, il n'y a qu'une seule racine : **/**. Il n'y a pas de lettre de lecteur car justement, Linux ne donne pas de nom aux lecteurs comme le fait Windows.

Sous Windows, un dossier peut être représenté de la manière suivante : **C:\Program Files\Winzip**. On dit que **Winzip** est un sous-dossier du dossier **Program Files**, lui même situé à la racine. C'est le **backslash (\)** qui sert de séparateur aux noms de dossiers. Sous Linux, c'est le contraire, le **/** sert de séparateur. La racine, le plus haut niveau de dossier, s'appelle juste **/**. Les dossiers sont complètement différents de ceux qu'on peut trouver nativement sur Windows.

Voici la liste des dossiers les plus courants sur Linux:
* **bin** : contient des programmes exécutables susceptibles d'être utilisés par tous les utilisateurs de la machine.
* **boot** : fichiers permettant le démarrage de Linux.
* **dev** : fichiers contenant les périphériques (lecteur de CD par exemple)
* **etc** : fichiers de configuration
* **home** : répertoires personnels des utilisateurs. Chaque utilisateur possède son répertoire personnel.
* **lib** : dossier contenant les bibliothèques partagées (fichiers .so ou .dll) utilisées par les programmes.
* **media** : contient les périphériques amovibles (clés USB, etc.)
* **mnt** : un peu comme **media**, mais pour un usage plus temporaire.
* **opt** : répertoire utilisé pour les *add-ons* de programmes.
* **proc** : contient des informations système.
* **root** : contient le dossier personnel du superutilisateur **root**, un espace spécial lui est dédié.
* **sbin** : contient des programmes systèmes importants.
* **tmp** : dossier temporaire utilisé par les programmes pour stocker des fichiers.
* **usr** : c'est un des plus gros dossiers, dans lequel vont s'installer la plupart des programmes demandés par l'utilisateur.
* **var** : ce dossier contient des données variables, souvent des logs (traces écrites de qui s'est passé récemment sur l'ordinateur).

Cette liste de dossiers est en fait présente sur les OS de type Unix, et pas seulement sous Linux.

Pour connaître le nom du dossier dans lequel on se situe (par exemple, connaître le nom exact que représente ~), on utilise la commande **pwd**. C'est l'abréviation de *Print Working Directory*. Elle ne prend aucun paramètre.

Pour connaître l'emplacement d'une commande on utilise le programme **which**. Elle prend un paramètre, le nom du programme que l'on recherche
	which pwd
En général, sous Linux, les programmes ne possèdent pas d'extension.
**ls** permet de lister les dossiers d'un répertoire donné ou non (celui dans lequl on se trouve si non mentionné). Ubuntu active la coloration des fichiers et dossiers par défaut. Les dossiers apparaissent en bleu foncé, les raccourcis en bleu clairs (le dossier se trouve ailleurs sur le disque). Pour ajouter la coloration automatique, soit on la passe en paramètre, soit on édite le **.bashrc** avec l'instruction suivante **ls --color=auto**. Éditer le **.bashrc** permet de ne pas resaisir à chaque fois l'instruction (cela peut être très pratique !). La commande **ls** accepte un grand nombre de paramètres, les plus utiles sont : 
* **-a** : affiche tous les dossiers et fichiers cachés. Affiche aussi **.**, le dossier courant et **..** si un dossier parent existe.
* **-A** : pareil que **-a**, sauf que n'affiche ni **.**, ni **..**.
* **-F** : indique le type d'élément, utile quand il n'y a pas de coloration syntaxiqye; rajoute un symbole à la fin des éléments pour les spécifier (/ pour un dossier, @ pour un raccourci).
* **-l** : liste détaillant chaque élément du dossier, un élément par ligne et chaque colonne a sa signification; de gauche à droite : droits sur le fichier, nombre de liens physiques, nom du propriétaire du fichier, nom du groupe auquel appartient le fichier, taille du fichier en octets, date de la dernière modification, nom du fichier (ou dossier). Dans le cas d'un raccourci ou lien symbolique, on nous précise vers où pointe le raccourci.
* **-h** : affiche la taille en Ko, Mo, Go, h signifie *Human Readable*.
* **-t** : trier par date de dernière modification.
* **-r** : renverse l'ordre d'affichage

On peut bien entendu combiner plusieurs options entre elles par exemple **ls -larth** qui liste les fichiers, dont les cachés, avec leurs renseignements respectifs dans l'ordre de modification du plus ancien au plus récent. On peut aussi s'épargner la frappe fastidieuse de tous ces paramètres en créant un alias de la commande dans le fichier de configuration **.bashrc** 

Pour se déplacer au sein des répertoires, on utilise la commande **cd** (Change Directory). Elle ne prend qu'un paramètre, le nom du dossier dans lequel on souhaite se rendre. L'invite de commande change pour noter le nouveau répertoire dans lequel on se situe. Pour revenir dans un répertoire parent on tape **cd ..**, pour revenir dans 2 répertoires parents, on tape **cd ../..**. On peut indiquer un chemin **relatif** ou un chemin **absolu**. Un chemin relatif dépend du dossier dans lequel on est, alors qu'un chemin absolu est le nom complet du dossier, on peut indiquer un chemin absolu depuis n'importe quel endroit, contrairement au chemin relatif. Pour retourne au répertoire **home**, on tape **cd ~** ou encore **cd** sans paramètres. Pour éviter de taper un chemin absolu dans son entier, on se sert de la tabulation.

La commande **du** renseigne sur la taille qu'occupe les dossiers du disque. Il y a des paramètres qui permettent de mieux comprendre ce qui nous est sorti.

* **-h** : comme pour **ls**, donne la taille de façon à mieux la comprendre, sans ça la taille est donnée en octets.
* **-a** : donne la taille des fichiers et des dossiers. Par défaut **du** ne donne la taille que des dossiers.
* **-s** : donne la taille totale du dossier dans lequel on lance la commande. Le point donné en sortie indique "le dossier courant".
### Manipuler les fichiers
#### cat & less : afficher un fichier
#### head & tail : afficher le début et la fin d'un fichier
#### touch & mkdir : créer des fichiers et dossiers
#### cp & mv : copier et déplacer un fichier
#### rm : supprimer des fichiers et dossiers
#### Résumé personnalisé
Pour afficher le contenu d'un fichier, il y a deux commandes principales **cat** et **less**.
**cat** affiche tout le fichier qu'on lui passe en paramètre. L'option -n permet de numéroter les lignes affichées en sortie.
**less** affiche le fichier page par page. La commande est très utile sur de gros fichier, car contrairement à **cat** qui affiche le contenu d'un coup, **cat** y va progressivement. Il existe une commande très proche : **more**, à la différence de **less**, elle possède peu de fonctionnalités et est moins puissante et rapide.
**less** prend le nom du fichier à afficher en paramètres. La commande arrête la lecture du fichier en fonction de la taille de l'écran de la console. Elle fonctionne avec quelques raccourcis indispensables:
* **Espace** : affiche la suite du fichier. Fait défiler d'un écran de console.
* **Entrée** : affiche la ligne suivante. Fait défiler ligne par ligne. **Flèche bas** a le même comportement.
* **d** : affiche les onze lignes suivantes. (une moitié d'écran)
* **b** : retourne en arrière d'un écran. **PageUp** a le même comportement.
* **y** : retourne d'une ligne en arrière. **Flèche haut** a le même comportement.
* **u** : retourne en arrière d'une moitié d'écran.
* **q** : arrête la lecture du fichier, met fin à la commande **less**.
* **=** : indique où on est dans le fichier (n° lg + %)
* **h** : affiche l'aide
* **/** : lance le mode recherche, après le slash renseigner le terme que l'on cherche dans le fichier avec **less**. On peut indiquer une regexp. On valide avec **Entrée**
* **n** : après une recherche, va à la prochaine occurrence du terme cherché.
* **N** : pareil que **n** mais dans le sens inverse.
(J'ai l'impression que de nombreuses commandes sont les mêmes que celles qu'on utilise dans Vim)
La casse des caractères est importante.

**head** affiche le début d'un fichier, **tail** affiche la fin. Elles ne permettent pas de se déplacer dans le fichier comme **less** mais juste de récupérer les premières et les dernières lignes.
Par défaut, **head** affiche les 10 premières lignes, mais on peut spécifier le nombre de lignes avec l'option -n.
**tail** affiche aussi les 10 premières lignes par défaut et on peut aussi préciser avec -n le nombre de lignes à afficher. La commande **tail** a plus d'options que **head**, en pas hésiter à consulter l'aide des commandes pour s'en rendre compte. L'option -f (pour follow) demande à **tail** de suivre la fin du fichier au fur et à mesure de son évolution. C'est extrêmement utile pour suivre un fichier de log qui évolue souvent, les nouvelles lignes s'affichent au fur et à mesure. On fait **Ctrl + C** pour sortir de la commande (correspond à **Alt + F4** sous Windows. Si on rajoute l'option -s avec une valeur chiffrée à l'instruction **tail -f**, on peut ains définir le nombre de secondes au bout duquel on demande * tail de suivre l'évolution du fichier. Les nombres décimaux sont autorisés à condition d'utiliser **.** à la place de **,**.

Il n'existe aucune commande spécialement conçue pour créer un fichier vide. En général, on ouvre un éditeur de texte, on enregistre et cela crée notre fichier. **touch**, à la base, sert à modifier le *timestamp* d'un fichier, à modifier la date de sa dernière modification. D'où son nom, on "touche" le fichier pour faire croire à l'ordinateur qu'on vient de le modifier alors qu'on n'a rien changé. L'intérêt de **touch** dans ce chapitre, c'est que si le fichier n'existe pas, alors il sera créé. On peut donc aussi utiliiser **touch** pour créer des fichiers, même si la commande n'est pas prévue pour cela à la base. La commande attend un paramètre, le nom du fichier "à créer". On peut créer plusieurs fichiers en une seule ligne, il suffit de séparer par des espaces les noms de fichiers à générer. Si le nom de fichier contient un espace, il suffit de l'encadrer entre une paire de guillemets (double quote).

**mkdir**, elle, est faite pour créer un dossier (make directory). Elle fonctionne de la même manière que **touch**, on peut créer plusieurs dossiers d'un coup en les séparant d'un espace et pour créer des dossiers intermédiaires inexistants, on utilise l'option -p.

Parmi les opérations de base sur les fichiers, il y a la copie et me déplacement de fichiers.
**cp** permet de copier un ou plusieurs fichiers / dossiers. Il y a plusieurs façons de se servir de la commande (ne pas hésiter à consulter l'aide pour plus de description).
La première : **cp SOURCE DESTINATION**. Le premier paramètre est le nom du fichier à copier, le second le nom de la copie à créer. **DESTINATION** peut être de nature **DIRECTORY**, dans ce cas-là, on peut utiliser la commande de la sorte : **cp SOURCE SOURCE SOURCE SOURCE DIRECTORY**. On peut copier plusieurs sources vers le répertoire de référence. C'est la deuxième façon de l'employer. La troisième façon ressemble à la seconde, sauf qu'on inverse l'ordre des paramètres **cp -t DIRECTORY SOURCE...**.
Avec l'option -R, on fait une copie récursive de SOURCE vers DEST, c'est-à-dire qu'on copie dossiers et sous-dossiers composant la SOURCE. Sinon on ne copie que le 1er niveau de SOURCE.
Le symbole **\*\** est appelé **wildcard** ou **joker**, il permet de remplacer n'importe quel caractère.
Exemple, on souhaite copier tous les fichiers .jpg d'un répertoire : **cp \*.jpg DIRECTORY/**. Le joket est un outil très puissant.

Pour déplacer ou renommer un fichier, on utilise **mv**. L'utilisation est la même que **cp**, les arguments et options se placent de la même façon. Le joker est bien entendu utilisable. Pour renommer un fichier, il suffit de le déplacer dans son répertoire d'origine sous un autre nom : **mv ancien-nom nouveau-nom**, ainsi le fichier aura été renommé sous "nouveau-nom". On peut déplacer et renommer un fichier en même temps. **mv ancien-nom nouveau-dossier/nouveau-nom** déplacera l'ancien fichier vers le nouveau dossier tout en le renommant par le nouveau nom.

Pour supprimer un fichier, on utilise **rm**. Par défaut, la commande ne supprime pas les dossiers, seulement les fichiers. On lui force la main avec l'option **-r**. Attention toute suppression est définitive (pas de récupération possible en corbeille), donc bien faire attention, ne pas hésiter à utiliser le flag **-i** pour demander la confirmation de la suppression, c'est une sécurité supplémentaire, on doit confirmer la suppression par "y" ou "n". Le paramètre à donner à la commande est le chemin (relatif ou absolu) du fichier à détruire. On peut supprimer plusieurs fichiers d'un coup, en les passant en paramètres à la suite, en les séparant par des espaces. **-f** force la suppression, ne demande pas de confirmation même s'il y a un problème, à ne vraiment utiliser que si on sait ce qu'on fait. **-v** est un paramètre que l'on retrouve dans beaucoup de commandes sous Linux. Il permet de demander à la commande d'expliquer ce qu'elle est en train de faire. Il existe la commande **rmdir** qui supprime les dossiers seulement s'ils sont vides.
Si on nous demande d'entrer **rm -rf /\*\** en console, ne pas le faire! Cette commande supprime tout notre disque dur depuis la racine ! On est bon pour une réinstallation TOTALE des OS (Linux et Windows compris). C'est la gestion des droits utilisateurs qui nous protégera d'un suppression intempestive. Il faut être loggé en tant que **root** pour pouvoir détruire des racines auxquelles seul **root** peut accéder. Somme toute, on peut légitimement avoir besoin de **rm -rf *\**, pour supprimer un dossier complet par exemple.

La commande **ln** permet de créer des liens entre des fichiers, elle créé des raccourcis. Sous Linux, on appelle ces raccourcis **liens**. On peut créer deux types de liens : les liens **physiques** et les liens **symboliques**. Ces deux types de lien ne fonctionnent pas de la même manière. Pour comprendre ce qui les différencie, il faut savoir comment un OS tel que Linux gère les fichiers sur le disque dur.

En résumant très grossièrement, chaque fichier, sur un disque dur, est séparé en trois parties :
* Son nom;
* Ses informations de gestion (droits d'accès);
* Son contenu.

La liste des noms de fichiers est stockée à un autre endroit que leur contenu et des informations sur les droits d'accès. Cette séparation aide Linux à s'organiser.

Chaque contenu de fichier se voit attribuer un numéro d'identification appelé **inode**. Chaque nom de fichier est associé à un **inode** (son contenu).

Un lien physique est plus rarement utilisé qu'un lien symbolique, mais il peut quand même se révéler pratique. Un lien physique permet d'avoir deux noms de fichiers qui partagent exactement le même contenu, c'est-à-dire le même inode. Ainsi, que nous passions par un fichier ou son lien physique, on modifie exactement le même contenu. En quelque sorte, le fichier est le même. On peut juste y accéder via deux noms de fichiers différents. On ne peut pas créer de liens physiques sur des répertoires, cela ne fonctionne qu'avec les fichiers, pour faire un "raccourci" vers un répertoire on préfèrera un lien symbolique. La commande **ln** créé des liens physiques par défaut. La syntaxe d'utilisation est la suivante **ln CIBLE HARD-LINK**. Pour vérifier que tout s'est bien passé, faire **ls -li** juste après (si dans même répertoire), l'option -i permet de visualiser les n° d'inodes et donc de confirmer que les 2 fichiers pointent bien vers le même inode. L'option -l ne nous permet que de savoir combien de liens physiques pointent vers le même inode, sans nous dire lequel est l'original duquel est le lien. L'inode est supprimé uniquement lorsque plus aucun nom de fichiers ne pointe dessus. Il faut donc supprimer la cible et le lien physique pour supprimer l'inode (le contenu).

Les liens symboliques ressemblent plus aux "raccourcis" dont on peut avoir l'habitude sous Windows. La plupart du temps on crée des liens symboliques sous Linux pour faire un raccourci et non des liens physiques (qui sont un peu particuliers). Le principe est que l'on crée un lien vers un autre nom de fichier. Cette fois, on point vers le nom de fichier et non vers l'inode directement. On utilise la syntaxe suivante **ln -s CIBLE SOFT-LINK**. Ici, la commande **ls -l** est suffisante pour distinguer un lien symbolique : la première colonne, en sortie, donnera un **l** en 1ere position dans la liste des informations des droits d'accès (donne un **d** si c'est un dossier et rien si c'est un fichier) et la dernière colonne pointe vers la cible originale. Les liens symboliques sont plus faciles à repérer que les liens physiques. Qu'on ouvre la cible ou le lien, le contenu édité sera le même. Si on supprime le lien, rien de fâcheux ne se passe. Si on supprime la cible, alors on ne peut plus éditer le contenu depuis le lien, le contenu n'existant plus. Le lien pointera vers un fichier n'existant plus, donc sera inutile, le lien sera cassé. On parle alors de lien mort. L'avantage c'est qu'on peut créer un lien symbolique sur un répertoire contrairement aux liens physiques.
### Les utilisateurs et les droits
#### sudo : exécuter une commande en root
#### adduser : gestion des utilisateurs
#### addgroup : gestion des groupes
#### chown : gestion des propriétaires d'un fichier
#### chmod : modifier les droits d'accès
#### Résumé personnalisé
Un compte utilisateur a des droits limités dans un environnement Linux. Il s'agit d'une sécurité de ne pas avoir le droit de tout faire par défaut car certaines commandes peuvent être dangereuses pour la stabilité et la sécurité d'un ordinateur. Par exemple, un virus ne peut rien faire si on n'est simplement connecté en utilisateur normal, avec des droits limités.
On peut créer autant d'utilisateurs que l'on veut, eux-mêmes répartis en groupe. Il y a un utilisateur spécial, **root**, appelé aussi *superutilisateur*. Il a tous les droits sur la machine. On ne se connecte à root que lorsque c'est nécessaire. Certaines commandes ne sont accessibles qu'en **root**. Ubuntu est une des rares distro à interdire de se logger en root (en début de session par exemple). On peut y accéder au besoin, mais "on ne peut pas ouvrir Ubuntu en root".

La commande **sudo** permet de devenir **root** le temps d'une instruction. On nous demandera notre mot de passe. La commande **sudo su** permet de rester **root** indéfiniment. On quitte le mode **root** avec l'instruction **exit** ou le raccourci clavier **Ctrl + D**. Certaines distribution permettent d'accéder au compte root seulement avec **su**. En ajoutant **su -**, cela a pour effet de rendre accessibles certains programmes destinés seulement à root et cela nous déplace dans le répertoire de root.

Pour gérer les utilisateurs, on peut mener plusieurs actions (on n'oublie de se mettre en root) :
* Ajouter un utilisateur : **adduser** (si Debian) sinon **useradd** (commandes Unix traditionnelles, moins d'options). Un répertoire personnel est automatiquement créé et le compte préconfiguré. Après le **username**, on nous demandera d'entrer un **password** et de le confirmer. Puis on peut rentrer quelques informations personnelles telles que le nom de famille, le numéro de téléphone, etc.
    adduser USERNAME
* Modifier un mot de passe : **passwd**. Si on ne précise pas de quel utilisateur, on souhaite modifier le mot de passe, alors on modifie celui du compte sur lequel on est loggé... Faire très attention à ce détail !
    passwd USERNAME
* Supprimer un utilisateur : **deluser** (si Debian) sinon **userdel**. Attention, aucune confirmation ne sera demandée! Toutefois, la commande toute seule ne supprime pas le répertoire personnel /home, on utilise le drapeau **--remove-home**. Ne pas supprimer son propre compte, ou le compte sur lequel on est loggé sous peine de ne pouvoir se reconnecter au nouveau démarrage d'Ubuntu (impossible de se connecter en root !).
    deluser [--remove-home] USERNAME
Attention, avec **useradd**, il faut appeler la commande **passwd** pour créer le mot de passe du compte, sans quoi le compte ne sera pas activé

Chaque utilisateur appartient à un groupe. Si on ne le définit, à la création de l'utilisateur, alors un groupe du même nom que celui de l'utilisateur se crée. L'intérêt des groupes utilisateurs permet de cloisonner les données que l'on souhaite partager, ou non.

On ajoute un utilisateur à un groupe avec la commande **addgroup** (**groupadd** si non Debian)
    addgroup GROUPE
La commande **usermod** permet d'éditer un utilisateur. Elle possède plusieurs paramètres dont :
* **-l** : renomme l'utilisateur (le répertoire personnel ne sera pas renommé);
* **-g** : change de groupe
* **-G** : pour que l'utilisateur appartienne à plusieurs groupes. Noms des groupes à déclarer après l'option en les séparant par des virgules, pas d'espaces entre les virgules, seulement entre les paramètres (les espaces).
* **-a** : conserve les groupes auxquels appartenait l'utilisateur, à combiner avec -G si on ne souhaite qu'ajouter l'utilisateur à des groupes (sinon on perd les groupes).

Pour supprimer un groupe, on utilise **delgroup** (**groupdel** si non Debian)
    sudo delgroup GROUPE	

Seul **root** peut changer le propriétaire d'un fichier.
* **chown** :  change le propriétaire d'un fichier (peut aussi changer le groupe, on ajoute : après le nom du nouveau propriétaire ainsi que le nouveau nom de groupe)
    sudo chown NEW-PROP[:NEW-GRP] FILE
* **chgrp** : change le groupe d'un fichier
    sudo chown NEW-GRP FILE
L'option -R affecte récursivement les sous-dossiers

Chaque fichier et chaque dossier possède une liste de droits. Cette liste indique qui a le droit de voir, modifier(/supprimer) ou exécuter un fichier/dossier. On peut trouver cette liste de droits avec la commande ls -l par exemple. Il s'agit de la première colonne en sortie de la commande:
* **d** : indique si l'élément est un dossier
* **l** : indique si l'élément est un lien
* **r** : indique si l'élément est lisible
* **w** : indique si l'élément est modifiable / supprimable
* **x** : indique si l'élément est exécutable si c'est un fichier; si c'est un dossier, indique que l'on peut le traverser, c-à-d voir les sous-dossiers qu'il contient si on le droit de lecture dessus.
Si la lettre apparaît, alors on a les droits, sinon il y a un tiret. Les droits sont découpés en fonction des utilisateurs, le premier triplet correspond au propriétaire du fichier, le deuxième au groupe du fichier et le derniers aux autres utilisateurs du fichier. root a tous les droits !
On n'a pas besoin d'être root pour changer les droits d'un élément.
On peut attribuer des droits avec des chiffres (**chmod** absolu) ou avec des lettres (**chmod** relatif)
À chaque droit correspond un chiffre : 1 pour x, 2 pour w et 4 pour r. On les additionne pour donner le droit voulu. On répète l'action de sorte à se retrouver avec un triplet de droits : 777 donne les droits de lecture / écriture / exécution au proprio, au groupe et aux autres utilisateurs. Attention 000 retire tous les droits à tout le monde, sauf à root.
    chmod 600 file
Avec les lettres, le principe revient un peu au même, sauf qu'on peut paramétrer plus finement les droits.
* **u** : user (propriétaire);
* **g** : group (groupe);
* **o** : other (autres);
* **+** : ajouter le droit;
* **-** : supprimer le droit;
* **=** : affecter le droit;
    chmod u+rx file
L'option **-R** affecte récursivement les modifications.
### Nano, l'éditeur de texte du débutant
#### Résumé personnalisé
Descriptif de l'utilisation de l'éditeur de texte Nano (perso, je suis sur Vim, donc je ne vais pas particulièrement m'étendre sur le sujet Nano). Nano s'inspire de pico, un éditeur de texte plus ancien. Le nom Nano vient du fait que l'éditeur est un tout petit programme (en comparaison avec emacs ou vim).
On nous parle également dans ce chapitre des fichiers de configurations **.bashrc** ou encore **.profile**
On trouve ces fichiers en deux endroits:
- Soit dans le répertoire /etc/programme/fichier-de-config
- Soit dans le répertoire personnel /home/USERNAME/.bashrc (s'il n'existe pas, on peut le créer, ou copier ici celui dans /etc, dans ce cas bien faire attention à être root). Le fichier de config du répertoire utilisateur prend la priorité sur le fichier de /etc/...
Le **.profile** est lu dans chaque nouvelle console dans laquelle on se logge (login/mdp), c'est le cas des consoles qu'on ouvre avec la combinaison **Ctrl+Alt+Fn°** (tty1 à tty6). Le **.bashrc** est lu lorsqu'on ouvre une console dans laquelle on se ne se logge pas, c'est le cas des console qu'on ouvre en mode graphique (Terminal sous Unity, Konsole sous KDE). La subtilité c'est que .profile appelle .bashrc... DOnc il suffit de modifier .bashrc pour modifier les options de toutes les consoles.
### Installer des programmes avec apt-get
#### Les paquets et leurs dépendances
#### Les dépôts
#### Les outils de gestion des paquets
#### apt-get update : mettre à jour le cache des paquets
#### apt-cache search : rechercher un paquet
#### apt-get install : installer un paquet
#### apt-get autoremove : supprimer un paquet
#### apt-get upgrade : mettre à jour tous les paquets
#### Résumé personnalisé
Sous Linux, on n'installe pas un programme comme sous Windows. Ce dont on parlera ici, ne concerne que les distributions Debian. Chaque distro a sa propre façon d'installer un programme. C'est une différence majeure entre les distributions. Sous Ubuntu, on a des paquets à la place des programmes d'installation. Un paquet est une sorte de dossier zippé contenant touts les fichiers du programme. Son extension est **.deb** (pour Debian).
Il y a deux différences notables entre un **.exe** et un **.deb** : il y a une gestion des dépendances du programmes et tous les **.deb** sont rassemblés au même endroit sur un même serveur appelé dépôt (repository) contrairement à Windows où il faut chercher son programme par navigateur.
Un programme sous Linux utilise d'autres programmes ou bout de programmes qu'on appelle bibliothèques. On dit que les programmes dépendent d'autres programmes pour fonctionner : ils ont des dépendances. Sous Debian, chaque paquet indique de quels autres paquets il dépend. Cela permet au système d'aller récupérer les dépendances manquantes automatiquement au besoin.
En fait, il existe un grand nombre de dépôts disposant tous des mêmes paquets afin de gérer l'afflux des nombreux Linuxiens. C'est donc à nous de choisir le dépôt à utiliser. Il est conseiller de choisir le serveur le plus proche géographiquement (pour un téléchargement plus rapide). En France, par défaut, Ubuntu utilise le dépôt **fr.archive.ubuntu.com**. Mais en cas de nouvelle version d'Ubuntu et de ses logiciels, celui-ci est surchargé et devient très lent. La liste des dépôts utilisés est stockée dans un fichier **/etc/apt/sources.list**. Le fichier contient des lignes avec des instructions commençant par **deb** ou **deb-src**. **deb-src** est utile si on souhaite récupéré le code source d'un programme, sinon on utilise majoritairement **deb**. En premier paramètre, on a l'adresse du dépôt, ensuite vient le nom de la distribution (focal pour WSL), puis la section du dépôt dans laquelle regarder. Pour changer le dépôt, il suffit de remplacer tous les **http://archive.ubuntu.com/ubuntu/** par l'adresse du serveur que l'on souhaite. On trouve un dépôt (des milliers existent) par moteur de recherche. On peut aussi faire la modification par l'outil graphique : Ubuntu -> Système -> Administration -> Sources de logiciels. C'est d'ailleurs plus pratique que d'éditer le fichier sources.list.

Les deux programmes de gestion des paquets les plus connus sont **apt-get** et **aptitude**. **aptitude** est plus efficace pour désinstaller des paquets : il désinstalle les dépendances inutilisées. Cependant **apt-get** a évolué et peut le faire aussi.

En général, il faut suivre 3 étapes pour télécharger un paquet :
* **apt-get update** : met à jour le cache; Cela correspond à télécharger la nouvelle liste des paquets proposés par le dépôt. Il ne faut pas nécessairement mettre à jour son cache à chaque fois  que l'on veut télécharger un paquet. On le fait quand on change / ajoute un dépôt à sa liste de dépôts et quand ça fait un moment qu'on n'a pas mis à jour le cache. On update en tant que root.
* **apt-cache search PAQUET** : pour rechercher un paquet dont on ne connait pas exactement le nom; cela évite d'aller chercher sur Internet le nom de son paquet. Pour une plus ample description on fait **apt-get show PAQUET**
* **apt-get install PAQUET** : pour télécharger et installer un paquet. On installe en tant que root, car peut être que le programme a besoin d'accéder à des dépendances ou répertoires seulement accessibles en tant que root. Pas besoin de dézipper ou quoique ce soit, **apt-get** gère l'installation de A à Z.

**apt-get remove PQT** supprime les paquets, **apt-get autoremove PQT** supprime les paquets et les dépendances. Et pour les gens qui ont WSL, pour un nettoyage en bonne et dûe forme, on fait **apt-get remove --auto-remove PQT** (pas d'autoremove).

**apt-get upgrade** met à jour tous les paquets installés sur son système d'un seul coup. Il faut penser à faire un **apt-get update** avant d'upgrader les paquets. Il est conseillé de le faire souvent afin d'avoir le système le plus à jour possible. Cela permet de bénéficier des dernières fonctionnalités des logiciels, mais cela corrige aussi les failles de sécurité qui auraient pu être découvertes.
### RTFM : lisez le manuel !
#### man : afficher le manuel d'une commande
#### Comprendre le SYNOPSIS
#### apropos : trouver une commande
#### D'autres façons de lire le manuel
#### Résumé personnalisé
Ici, on apprend à lire la documentation au sein de Linux. On utilise man, --help et parfois -h (mais vaut mieux utiliser le paramètre long, car il arrive que le paramètre court soit programmé pour une toute autre action).
Pour obtenir un version française du manuel : **apt-get install manpages-fr** (attention, la version française n'est pas forcément à jour !).
La commande **apropos** permet de chercher une commande par mots-clés, c'est un peu l'inverse du **man**. La commande **whatis** permet d'obtenir un court descriptif de la commande qu'on donne en paramètre.
### Rechercher des fichiers
#### Résumé personnalisé
### Quiz 2
## Partie 3
### Extraire, trier et filtrer des données
#### Résumé personnalisé
### Les flux de redirection
#### Résumé personnalisé
### Surveiller l'activité du système
#### Résumé personnalisé
### Exécuter des programmes en arrière-plan
#### Résumé personnalisé
### Exécuter un programme à une heure différée
#### Résumé personnalisé
### Quiz 3
## Partie 4
### Archiver et compresser
#### Résumé personnalisé
### La connexion sécurisée à distance avec SSH
#### Résumé personnalisé
### Transférer des fichiers
#### Résumé personnalisé
### Analyser le réseau et filtrer le trafic avec un pare-feu
#### Résumé personnalisé
### Compiler un programme depuis les sources
#### Résumé personnalisé
### Quiz 4
## Partie 5
### Vim l'éditeur de texte du programmeur
#### Résumé personnalisé
### Introduction aux scripts shell
#### Résumé personnalisé
### Afficher et manipuler des variables
#### Résumé personnalisé
### Les conditions
#### Résumé personnalisé
### Les boucles
#### Résumé personnalisé
### Les fonctions
#### Résumé personnalisé
### TP : générateur de galerie d'images
#### Résumé personnalisé
### Quiz 5
