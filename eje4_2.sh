#!/bin/bash

# Solicitar al usuario que ingrese el primer número
read -p "Ingrese el primer número: " numero1

# Solicitar al usuario que ingrese el segundo número
read -p "Ingrese el segundo número: " numero2

# Realizar la suma de los dos números
suma=$(($numero1 + $numero2))

# Imprimir la suma
echo "La suma de $numero1 y $numero2 es: $suma"
