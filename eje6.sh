#!/bin/bash

# Solicitar al usuario que ingrese el sueldo
read -p "Ingrese el sueldo del empleado: " sueldo

# Solicitar al usuario que ingrese el rango del empleado
read -p "Ingrese el rango del empleado (A, B, C, D): " rango

# Calcular la asignación según el rango y el sueldo
case $rango in
    A)
        if (( sueldo < 3000 )); then
            asignacion="Ninguna"
        elif (( sueldo >= 3000 && sueldo < 5000 )); then
            asignacion="Bono 1"
        else
            asignacion="Bono 2"
        fi
        ;;
    B)
        if (( sueldo < 3500 )); then
            asignacion="Ninguna"
        elif (( sueldo >= 3500 && sueldo < 6000 )); then
            asignacion="Bono 1"
        else
            asignacion="Bono 2"
        fi
        ;;
    C)
        if (( sueldo < 4000 )); then
            asignacion="Ninguna"
        elif (( sueldo >= 4000 && sueldo < 7000 )); then
            asignacion="Bono 1"
        else
            asignacion="Bono 2"
        fi
        ;;
    D)
        if (( sueldo < 4500 )); then
            asignacion="Ninguna"
        elif (( sueldo >= 4500 && sueldo < 8000 )); then
            asignacion="Bono 1"
        else
            asignacion="Bono 2"
        fi
        ;;
    *)
        asignacion="Rango inválido"
        ;;
esac

# Imprimir la asignación
echo "La asignación para un sueldo de $sueldo y rango $rango es: $asignacion"
