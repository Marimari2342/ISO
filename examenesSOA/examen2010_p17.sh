#!/bin/bash

# Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocación
# (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta de un
# archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos y
# sólo para aquellos parámetros que se encuentren en posiciones impares (el primero, el tercero, el
# quinto, etc), verificar si el archivo o directorio existe en el sistema, imprimiendo en pantalla
# que tipo de objeto es (archivo o directorio). Además, deberá informar la cantidad de archivos o
# directorios inexistentes en el sistema.

# validar que al menos recibí un parámetro
if [ $# -eq 0 ];then
    echo "Error, el script debe recibir al menos un parámetro."
    exit 1
fi

cont=0
for ((i=1; i<=$#; i++));do
    if (( i % 2 -ne 0 ));then
        if [ -e "${!i}" ];then
            if [ -f "${!i}" ];then
                echo "${!i} es un archivo."
            elif [ -d "${!i}" ];then
                echo "${!i} es un directorio."
            fi
        else
            cont=$((cont+1))
        fi
    fi
done
echo "Cantidad de archivos inexistentes en el sistema: $cont"
