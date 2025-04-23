#!/bin/bash
echo 'Removing previous container if it exists'
docker rm -f medicaldiffusion

echo "Image building ..."
docker build -t medicaldiffusion:train .

# echo "Log folder creation"
# rm -f -R log_medicaldiffusion
# mkdir log_medicaldiffusion

echo "Container launching ..."
docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=16gb medicaldiffusion:train
# docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=16gb -v $(pwd)/log_medicaldiffusion:/medicaldiffusion medicaldiffusion:train

echo "Waiting for container to finish..."
docker container wait medicaldiffusion

echo "try to copy container"
rm -f -R container_copy
mkdir container_copy
docker container cp medicaldiffusion:/ $(pwd)/container_copy