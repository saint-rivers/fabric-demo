#!/bin/bash

export COMPOSE_PROJECT_NAME=net
export FABRIC_VERSION=2.2
export DOCKER_COMPOSE_PATH=${PWD}/docker


if [ "$1" == "up" ]; then

    docker-compose -f "$DOCKER_COMPOSE_PATH"/docker-compose-cli.yaml up -d

elif [ "$1" == "down" ]; then

    docker-compose -f "$DOCKER_COMPOSE_PATH"/docker-compose-cli.yaml down

fi
