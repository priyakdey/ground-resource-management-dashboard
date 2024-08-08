#!/bin/sh

set -xe

docker run \
    --name mongo-express \
    --network grm \
    -p "8081:8081" \
    -e "ME_CONFIG_MONGODB_ADMINUSERNAME=root" \
    -e "ME_CONFIG_MONGODB_ADMINPASSWORD=password" \
    -e "ME_CONFIG_MONGODB_URL=mongodb://root:password@mongodb:27017" \
    -e "ME_CONFIG_BASICAUTH_USERNAME=root" \
    -e "ME_CONFIG_BASICAUTH_PASSWORD=password" \
    -d \
    mongo-express:latest
