#!/usr/bin/env bash

export COMPOSE_FILE=docker-compose.yml

case $1 in
  'up')
    docker-compose -f "${COMPOSE_FILE}" up -d
    ;;
  'down')
    docker-compose -f "${COMPOSE_FILE}" down
    ;;
  'clean_cache')
    docker volume rm $(docker volume ls -q)
    ;;
  'test')
    docker run --rm -it $(docker build -q -f server-test.Dockerfile .)
    ;;
  *)
  echo "Invalid command"
    ;;
esac

