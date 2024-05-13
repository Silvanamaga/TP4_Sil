#!/bin/bash

# Usar el comando cat /proc/cpuinfo para obtener información de la CPU y filtrar el modelo del procesador
modelo_procesador=$(cat /proc/cpuinfo | grep "model name" | uniq | awk -F ':' '{print $2}' | sed 's/^[ \t]*//')

# Imprimir el modelo del procesador
echo "El modelo de la CPU de esta máquina es: $modelo_procesador"

