#!/bin/bash

# Bucle infinito
while true; do
    # Obtener la hora actual
    hora=$(date +"%Y-%m-%d %H:%M:%S")
    
    # Obtener la cantidad de bytes recibidos
    bytes_recibidos=$(cat /sys/class/net/enpXsX/statistics/rx_bytes)
    
    # Escribir la hora y los bytes recibidos en el archivo
    echo "$hora $bytes_recibidos" >> /tmp/datos
    
    # Esperar 1 segundo antes de volver a obtener los datos
    sleep 1
done
