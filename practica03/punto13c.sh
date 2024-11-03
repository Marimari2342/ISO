#!/bin/bash

# 13 (c) Crear un script que reciba como parámetro el nombre de un archivo e informe si el mismo
# existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no
# exista el archivo/directorio cree un directorio con el nombre recibido como parámetro.

# ----------------------

# me aseguro que se recibió un sólo parametro
if [ $# -ne 1 ]; then # si el total de parámetros pasados ($#) no es igual (-ne) a 1
    echo "Error: Debes ingresar exactamente un sólo nombre de archivo."
    echo "Uso: $0 nombre_de_archivo_o_directorio" # esto es para explicar como usar el script
    exit 1 # error general
fi

if [ -f "$1" ];then
  echo "Se encontró un archivo con ese nombre"
elif [ -d "$1" ]; then
  echo "Se encontró un directorio con ese nombre"
else
  mkdir $1
  echo "Se generó un nuevo directorio llamado $1"
fi