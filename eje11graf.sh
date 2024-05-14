#!/bin/bash
#debe escribir ./tp6graf.sh
# Definir la interfaz de red
interfaz="enp2s0"  # Reemplaza "X" con el número de tu interfaz

# Duración del monitoreo en segundos
echo "especifica tiempo"
read tiempo
duracion_monitoreo=$tiempo  # Cambia este valor según lo que necesites

# Función para obtener el tráfico recibido en bytes
trafico_recibido() {
    cat "/sys/class/net/$interfaz/statistics/rx_bytes"
}
echo $trafico_recibido
# Tiempo inicial
tiempo_inicial=$(date +%s)

rm ./tmp/datos
touch ./tmp/datos

# Bucle para leer y guardar el tráfico recibido durante la duración especificada
while true; do
    # Verificar si ha pasado el tiempo especificado
    tiempo_actual=$(date +%s)
    tiempo_transcurrido=$((tiempo_actual - tiempo_inicial))
    if [ $tiempo_transcurrido -ge $duracion_monitoreo ]; then
        break
    fi

    # Obtener la hora actual
    hora=$(date +"%T")

    # Obtener el tráfico recibido
    trafico=$(trafico_recibido)

    # Guardar la hora y el tráfico recibido en el archivo /tmp/datos
    echo "$hora $trafico" >> ./tmp/datos

    # Esperar 1 segundo antes de volver a leer el tráfico
    sleep 1
done
python3 comandostp5ej6.py