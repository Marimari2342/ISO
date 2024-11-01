#!/bin/bash

# Escriba un script que reciba como parámetro el nombre de un directorio. Debes validar que el mismo
# exista y de no existir causar la terminación del script con código de error 4. Si el directorio
# existe deberá contar por separado la cantidad de archivos que en él se encuentran para los cuales
# el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar dichos valores
# en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y tampoco deberán ser
# tenidos en cuenta para la suma a informar.

# Verificar que sólo se recibe un parámetro
if [ $# -ne 1 ];then
    echo "Error, sólo se debe recibir un parámetro"
    exit 1
fi

if [ -d "$1" ];then
    contR=0
    contW=0
    for i in "$1"/*;do
        if [ -f "$i" ];then
            if [ -r "$i" ];then
                contR=$((contR+1))
            fi
            if [ -w "$i" ];then
                contW=$((contR+1))
            fi
        fi
    done
    echo "Se encontraron $contR archivos con permiso de lectura y $contW archivos con permiso de escritura"
elif 
    echo "El directorio $1 no existe"
    exit 4
fi