#!/bin/bash

# Realice un script que verifique cada 3 segundos si existe el archivo /var/log/any-service/error.log.
# Si el archivo existe y dentro de él hay al menos una línea con el texto “FATAL ERROR”, debemos
# comprimir y empaquetar el contenido del directorio /var/log/usr-service, guardarlo en un directorio
# que es pasado como parámetro al script y además causar la terminación del script apropiadamente.
# Cuando el script termina, debemos informar por la salida estándar la cantidad de líneas del
# archivo que contenían el texto “FATAL ERROR”.

# Verifico que se pase UN SÓLO parámetro (que va a ser el nombre del directorio).
if [ $# -ne 1 ];then
    echo "Error, se debe pasar un sólo parámetro."
    exit 1
fi

encontre=false
archivo="/var/log/any-service/error.log"
while ("$encontre"=false);do
    if [ -f "$archivo" ];then
        cant_lineas=$(cat "$archivo" | grep "FATAL ERROR" | wc -l)
        if [ "$cant_lineas" -gt 0 ];then
            tar -czvf $1/archivo.tar.gz /var/log/usr-service
            echo "Compresion exitosa"
            # informar la cantidad de líneas del archivo que contenían el texto “FATAL ERROR”.
            echo "Cantidad de lineas --> $cant_lineas"
            encontre=true
            exit 0
        fi
    fi
    sleep 3
done
