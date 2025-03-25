#!/bin/bash

CONTAINER_NAME="distance-converter-app"

# Verifica se o container está rodando e para ele
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Parando o container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
else
    echo "O container $CONTAINER_NAME não está em execução."
fi

# Se o parâmetro -R for passado, remove o container
if [[ $1 == "-R" ]]; then
    if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
        echo "Removendo o container $CONTAINER_NAME..."
        docker rm $CONTAINER_NAME
    else
        echo "O container $CONTAINER_NAME já foi removido."
    fi
fi

echo "Operação concluída."
