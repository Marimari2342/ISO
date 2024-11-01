#!/bin/bash

# Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocación
# (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta de un
# archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos y:
# * Si el parámetro es un archivo existente en el FileSystem deberá comprimirlo dejando el archivo
# comprimido en lugar del original.
# * Si el parámetro es un directorio existente en el FileSystem:
# * - Si tiene permiso de lectura deberá empaquetarlo y comprimirlo.
# * - Si tiene permiso de escritura deberá eliminarlo junto con todo su contenido.
# * Si el parámetro no es un elemento del FileSystem (no existe), deberá contarlo e indicar la
# cantidad total al finalizar el script.

# validar que al menos se reciba un parámetro
if [ $# -eq 0 ];then
    echo "Error, debe pasarse al menos un parámetro"
    exit 1
fi

cont=0
for i in $*;do
    # el parametro es un archivo existente
    if [ -f "$i" ];then
        # comprimir
        gzip "$i"
    elif [ -d "$i" ];then
        if [ -r "$i" ];then
            # empaquetar y comprimir
            tar -czf "$i.tar.gz" "$i"
        elif [ -w "$i" ];then
            # eliminar el directorio y su contenido 
            rm -r "$i"
        fi
    elif [ ! -e $i ];then
        $cont=$((cont+1))
    fi
done
echo "Cantidad de parámetros que no spm un elemento del FileSystem: $cont"