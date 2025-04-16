#!/bin/bash

echo "Ceci est un test"
docker build -t medicaldiffusion:train .
docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=16gb medicaldiffusion:train     