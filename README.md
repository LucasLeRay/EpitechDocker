# EpitechDocker

Ce conteneur permet aux étudiants d'Epitech de tester leurs projets sur la même distribution Linux que celle utilisée pour les tests unitaires.

## Prérequis

Évidemment, vous devez être un étudiant d'Epitech et avoir un login valide pour utiliser ce conteneur.

Pour installer ce conteneur, vous devez installer [Docker](https://www.docker.com/).  
Docker est un logiciel libre qui automatise le déploiement d'application dans des conteneurs logiciels.  
Il est disponible sur Windows, Mac et Linux.

Ensuite, vous devrez générer une clé ssh sur votre système à l'aide de la commande suivante:

```
ssh-keygen -t rsa
```

## Installation du conteneur

Après avoir cloné le projet à la racine de votre espace de travail, allez dans le dossier EpitechDocker, ouvrez le fichier Dockerfile et, à la ligne 16, remplacez lucas.le-ray@epitech.eu par votre login Epitech.
Ensuite, exécutez la commande suivante:

```
make build
```
Cela va construire le conteneur, cette opération peut prendre plusieurs minutes.
Si l'installation échoue, vérifiez que docker est bien installé et que le fichier id_rsa.pub existe bien dans le dossier ~/.ssh/

Si l'installation est un succès, entrez:

```
make run
```

Vous êtes maintenant dans le conteneur !
Vous pouvez voir qu'il y a une copie du dossier dans lequel vous avez cloné le projet, cela vous permet d'accéder à votre espace de travail directement dans le conteneur.

Pour quitter le conteneur, entrez:

```
exit
```

Vous devrez exécuter la commande ```make run``` dans le dossier EpitechDocker à chaque fois que vous voudrez entrer dans le conteneur.

## Exécutables

Ce projet dispose de plusieurs exécutables utilisables au sein du conteneur qui peuvent être utiles lorsque vous travaillez sur vos projets:
- clone $1 (clone le répertoire $1)
- uploadssh (envoie une nouvelle clé ssh à BLIH)
- mrclean (supprime les fichiers temporaires)
- push (push votre projet avec git)
- repogit $1 (créé le répertoire $1 et défini les droits valides à ramassage-tek)
- zsh (avec ohmyzsh)

## Auteur

* **Lucas LE RAY** - [LucasLeRay](https://github.com/LucasLeRay)
