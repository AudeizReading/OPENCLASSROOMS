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
### Quiz 1
## Partie 2
### La console, ça se mange ?
### Entrer une commande
### La structure des dossiers et fichiers
### Manipuler les fichiers
### Les utilisateurs et les droits
### Nano, l'éditeur de texte du débutant
### Installer des programmes avec apt-get
### RTFM : lisez le manuel !
### Rechercher des fichiers
### Quiz 2
## Partie 3
### Extraire, trier et filtrer des données
### Les flux de redirection
### Surveiller l'activité du système
### Exécuter des programmes en arrière-plan
### Exécuter un programme à une heure différée
### Quiz 3
## Partie 4
### Archiver et compresser
### La connexion sécurisée à distance avec SSH
### Transférer des fichiers
### Analyser le réseau et filtrer le trafic avec un pare-feu
### Compiler un programme depuis les sources
### Quiz 4
## Partie 5
### Vim l'éditeur de texte du programmeur
### Introduction aux scripts shell
### Afficher et manipuler des variables
### Les conditions
### Les boucles
### Les fonctions
### TP : générateur de galerie d'images
### Quiz 5
