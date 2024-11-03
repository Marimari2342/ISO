#!/bin/bash

# 14 Haga un script que renombre solo archivos de un directorio pasado como parametro agregandole 
# una CADENA, contemplando las opciones:
# * “-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del archivo.
# * “-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre del archivo.

# ----------------------

# Me aseguro que pase 3 parámetros (el directorio, la opcion [-a o -b] y la cadena a concatenar)
if [ $# -ne 3 ];then
  echo "Error: Debes ingresar exactamente tres parámetros."
  echo "Uso: $0 /directorio/ opcion(-a o b) cadena" # esto es para explicar como usar el script
  exit 1 # error general
fi

directorio=$1
opcion=$2
cadena=$3

if [ -d $directorio ]; then
  case $opcion in
    -a)
      # renombra el fichero concatenando CADENA al final del nombre del archivo.
      for file in "$directorio"*;then
        if [ -f "$file" ]; then
          nombre_archivo=$(basename "$file")  # Extraer solo el nombre del archivo, sin la ruta
          nuevo_nombre="${nombre_archivo}${cadena}"  # Concatenar la cadena al final del nombre
          mv -v "$file" "$directorio$nuevo_nombre"  # Renombrar el archivo
        fi
      done
      ;;
    -b)
      # renombra el fichero concatenando CADENA al inicio del nombre del archivo.
      for file in "$directorio"*;then
        if [ -f "$file" ]; then # si es un archivo
          nombre_archivo=$(basename "$file")  # Extraer solo el nombre del archivo, sin la ruta
          nuevo_nombre="${cadena}${nombre_archivo}"  # Concatenar la cadena al inicio del nombre
          mv -v "$file" "$directorio$nuevo_nombre"  # Renombrar el archivo
        fi
      done
      ;;
    *)
      echo "Error, opcion ingresada inválida."
      exit 1
  esac
else
  echo "Error, no se envió un directorio como parámetro"
fi
exit 0