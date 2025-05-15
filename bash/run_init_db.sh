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

echo "Starting PostgreSQL container..."
docker-compose up -d

# Проверяем статус контейнера
if [ "$(docker-compose ps -q postgres)" ]; then
    echo "PostgreSQL container is running!"
    echo "Connection details:"
    echo "Host: localhost"
    echo "Port: 5432"
    echo "Database: demo"
    echo "Username: test_sde"
    echo "Password: @sde_password012"
else
    echo "Error: Failed to start PostgreSQL container"
    exit 1
fi