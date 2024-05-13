#!/bin/bash

# Verificar si se proporcionaron dos argumentos (números)
if [ $# -ne 2 ]; then
    echo "Uso: $0 <numero1> <numero2>"
    exit 1
fi

# Capturar los dos números ingresados como argumentos
numero1=$1
numero2=$2

# Realizar la suma de los dos números
suma=$(($numero1 + $numero2))

# Imprimir la suma
echo "La suma de $numero1 y $numero2 es: $suma"
