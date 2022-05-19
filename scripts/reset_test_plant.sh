#!/usr/bin/env bash

set -ex

docker kill $(docker ps -qa) || true
docker rm $(docker ps -qa) || true
docker system prune -f


sudo rm -rf examples/postgresql/app
sudo rm -rf examples/postgresql/volumes

mkdir -p examples/postgresql/volumes
touch examples/postgresql/volumes/.gitkeep