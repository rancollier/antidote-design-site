#!/bin/bash

echo "Building docker images"

docker build -t built-static:latest -f nginx/Dockerfile .

echo "Builing successfull"

docker-compose -f docker-compose.yml -f docker-compose.prod.yml up 