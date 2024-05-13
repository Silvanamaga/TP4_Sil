#!/bin/bash

# Usar el comando free -h para mostrar la cantidad de RAM disponible
ram_disponible=$(free -h | awk '/^Mem:/ {print $2}')

# Imprimir la cantidad de RAM disponible
echo "La cantidad de RAM disponible en esta máquina es: $ram_disponible"


