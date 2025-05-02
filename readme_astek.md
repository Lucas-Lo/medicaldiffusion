## Informations générales
Ce projet permet de lancer via un conteneur docker un run d'entrainement pour le modèle de génération d'images.

## Lignes de commandes pour le lancement des entrainements
Un script commands.sh permet de lancer les commandes python pour l'entrainement du GAN puis du modèle de diffusion.
Concernant les variables des fonctions Python, elles sont directement modifiables depuis les fichiers de configuration suivants :
- config/dataset/default pour la base de donnée locale
- config/model/vq_gan.yaml pour la configuration du modèle GAN
- config/model/ddpm.yaml pour la configuration du modèle de diffusion
Les variables peuvent être aussi directement attribuées dans les lignes de commandes. Les fichiers de config contiennent les valeurs par défaut.

## Script de lancement du Docker
Un second script script.sh permet de lancer les commandes docker. Il supprime l'ancien contenuer s'il  existe, génère l'image et la lance en conteneur.
A la fin de l'opération, le conteneur est sauvegardé afin de récupérer les poids des modèles.
/!\ Attention à bien accorder les droits d'ériture.


## Base de données
En ce qui concerne le format des données, il est attendu que toutes les données soients présentes dans le dossier data à la racine. Ce dossier contiendra chaque patch au format .nii