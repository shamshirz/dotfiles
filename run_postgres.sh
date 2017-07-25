#!/bin/bash

# If you prefer docker to installing postgres locally

# create postgres superuser account for Phoenix
# psql -h 127.0.0.1 -d postgres
# CREATE USER postgres SUPERUSER

# If you get a port problem, it's probably because you installed a postgres with homebrew at some point
# brew services list
# brew services postgresql stop

# Add an env var for your docker_volumes to your bash_rc to make life easier
# DOCKER_VOLUMES=/Users/aaron/Documents/docker_volumes

mkdir -p $DOCKER_VOLUMES

docker run \
 --rm \
 --name test-postgres \
 -e POSTGRES_PASSWORD=postgres \
 -p 127.0.0.1:5432:5432 \
 -v $DOCKER_VOLUMES/test-postgres:/var/lib/postgresql/data \
 -d postgres
