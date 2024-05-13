#!/bin/bash

# Generar un número aleatorio entre 1 y 10
numero_aleatorio=$(( (RANDOM % 10) + 1 ))

# Solicitar al usuario que ingrese un número entre 1 y 10
read -p "Ingrese un número entre 1 y 10: " numero_usuario

# Verificar si el número ingresado está dentro del rango permitido
if (( numero_usuario < 1 || numero_usuario > 10 )); then
    echo "El número ingresado está fuera del rango permitido."
    exit 1
fi

# Imprimir el número aleatorio generado y el número ingresado por el usuario
echo "El número aleatorio generado es: $numero_aleatorio"
echo "El número ingresado por el usuario es: $numero_usuario"

# Comparar los números
if (( numero_aleatorio == numero_usuario )); then
    echo "¡Felicidades! Los números son iguales."
else
    echo "Lo siento, los números son diferentes."
fi
