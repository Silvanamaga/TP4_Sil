#!/bin/bash

# Solicitar al usuario que ingrese el sueldo
read -p "Ingrese el sueldo del empleado: " sueldo

# Solicitar al usuario que ingrese el rango del empleado (1, 2, 3)
read -p "Ingrese el rango del empleado (1, 2, 3): " rango

# Calcular la asignación según el rango y el sueldo
case $rango in
    1)
        asignacion=$(echo "$sueldo * 0.83" | bc)
        ;;
    2)
        asignacion=$(echo "$sueldo * 1.2" | bc)
        ;;
    3)
        asignacion=$(echo "$sueldo * 5" | bc)
        ;;
    *)
        asignacion="Rango inválido"
        ;;
esac

# Imprimir la asignación
echo "La asignación para un sueldo de $sueldo y rango $rango es: $asignacion"
