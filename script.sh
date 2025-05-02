#!/bin/bash
echo 'Removing previous container if it exists'
docker rm -f medicaldiffusion

echo "Image building ..."
docker build -t medicaldiffusion:train .

echo "Removing some folders"
rm -f -R log_medicaldiffusion
rm -f -R container_copy

echo "Container launching ..."
docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=16gb medicaldiffusion:train  # 16 Go devrait etre necessaire pour le lancement du projet

echo "Waiting for container to finish..."
docker container wait medicaldiffusion

echo "try to copy container"
mkdir container_copy
docker container cp medicaldiffusion:/ $(pwd)/container_copy