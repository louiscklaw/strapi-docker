#!/usr/bin/env bash

set -ex

docker kill $(docker ps -qa) || true
docker rm $(docker ps -qa) || true
docker system prune -f
