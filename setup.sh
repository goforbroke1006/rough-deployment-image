#!/usr/bin/env bash

IMAGE_NAME=goforbroke1006/rough-deployment

docker login
docker build --file=./Dockerfile --tag ${IMAGE_NAME}:latest .
docker push ${IMAGE_NAME}:latest
