#!/bin/bash

if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: Docker is not installed.' >&2
  exit 1
fi

# Проверяем, установлен ли Docker Compose
if ! [ -x "$(command -v docker-compose)" ]; then
  echo 'Error: Docker Compose is not installed.' >&2
  exit 1
fi