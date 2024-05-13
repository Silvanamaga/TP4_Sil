#!/bin/bash

# Generar un nombre aleatorio
nombres=("Juan" "María" "Pedro" "Ana" "Luis" "Laura")
nombre_random=${nombres[$RANDOM % ${#nombres[@]}]}

# Generar una edad aleatoria entre 18 y 80
edad_random=$((RANDOM % (80 - 18 + 1) + 18))

# Imprimir nombre y edad aleatorios
echo "Nombre: $nombre_random, Edad: $edad_random"
