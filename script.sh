#!/bin/bash

docker build -t medicaldiffusion:train .
docker run --gpus '"device=0"' --name medicaldiffusion --shm-size=8gb medicaldiffusion:train     