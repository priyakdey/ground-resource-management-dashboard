#!/bin/sh

set -xe

docker run \
    --name mongodb \
    -v mongodb-data:/data/db \
    -v mongodb-logs:/var/log/mongodb \
    --network grm \
    -p "27017:27017" \
    -e "MONGO_INITDB_ROOT_USERNAME=root" \
    -e "MONGO_INITDB_ROOT_PASSWORD=password" \
    -d \
    mongo:latest
