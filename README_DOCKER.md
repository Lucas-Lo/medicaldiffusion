Suivre ces étapes pour lancer le script:

Etape 0 : Se rendre dans le dossier medicaldiffusion fraichement téléchargé
Etape 1 : docker build -t medicaldiffusion:train .
Etape 2 : docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=8gb medicaldiffusion:train

Pour l'étape 2 :
- La partie '"device=0"' dépend de comment on sélectionne le GPU sur le serveur
- La partie --shm-size=8gb indique qu'il faut allouer 8Go de RAM à l'image. Je pense que 16 voire 32 ne serait pas de refus mais je ne connais pas les ressources à disposition