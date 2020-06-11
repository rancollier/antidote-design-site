#!/bin/bash

echo "Build docker images"

docker build -t local-nginx:latest -f nginx/Dockerfile .

echo "Build Dev Images success!"

docker-compose -f docker-compose.yml -f docker-compose.dev.yml up