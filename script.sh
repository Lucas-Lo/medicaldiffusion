#!/bin/bash
echo 'Removing previous container if it exists'
docker rm -f medicaldiffusion
echo "Image building ..."
docker build -t medicaldiffusion:train .
echo "Container launching ..."
docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=16gb medicaldiffusion:train     