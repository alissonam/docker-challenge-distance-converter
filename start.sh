#!/bin/bash

CONTAINER_NAME="distance-converter-app"
IMAGE_NAME="distance-converter"

# Verifica se o container já existe
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Container já existe. Iniciando..."
    docker start $CONTAINER_NAME
else
    echo "Container não encontrado. Criando e iniciando..."
    docker build -t $IMAGE_NAME .
    docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME
fi

echo "Aplicação rodando em http://localhost:5000"
