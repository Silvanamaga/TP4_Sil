#!/bin/bash

# Verificar si se proporcionaron dos argumentos (nombre y edad)
if [ $# -ne 2 ]; then
    echo "Uso: $0 <nombre> <edad>"
    exit 1
fi

nombre=$1
edad=$2

# Imprimir nombre y edad
echo "Nombre: $nombre, Edad: $edad"
