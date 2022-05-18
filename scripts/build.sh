#!/usr/bin/env bash

set -ex

pushd examples/postgresql
  docker-compose pull
  docker-compose build
  docker-compose up -d
  docker-compose logs -f
popd