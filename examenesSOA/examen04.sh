#!/bin/bash

#Escribir un script de Bash que agregue a un arreglo los nombres de los archivos del directorio
# /var/log que tengan el texto “access” en su nombre. Luego implemente las siguientes funciones
# sobre ese arreglo:

# * cantidad(): imprime la cantidad de archivos del directorio /var/log que tengan el texto “access”
# en su nombre.
# * listar(): imprime los nombres de todos los archivos del directorio /var/log que tengan el texto
# “access” en su nombre.
# * eliminar <parametro1><parametro2>(): recibe como primer parámetro el índice de un arreglo y 
# como segundo parámetro la cadena “lógico” o “físico”. Si el segundo parámetro es “lógico” sólo
# borra la entrada en el arreglo, si es “físico”, borra la entrada en el arreglo y en el FileSystem.

# Aclaración: para resolver las funciones debe valerse del arreglo.

# Verificar que no se pasaron parámetros (puesto que el enunciado no me los pide)
if [ $# -ne 0 ];then
    echo "Error: este script no debe recibir parámetros."
    exit 1
fi

# FUNCIONES

# imprimir cantidad de archivos del directorio /var/log que tengan el texto “access” en su nombre.
cantidad () {
    echo "Cantidad de archivos del directorio: ${#arreglo[*]}"
}

# imprimir los nombres de todos los archivos del directorio /var/log que tengan el texto “access” en su nombre.
listar () {
    echo "${arreglo[*]}"
}

# borrado lógico o físico (recibe dos parámetros)
eliminar () {
    dim=$cantidad
    if [ $# -ne 2 ];then
        echo "Error, no se pasaron 2 parámetros."
        exit 1
    elif [ $1 -ge 0 || $1 -lt dim ];then # si el parametro $1 cumple 0 <= $1 < dimArr
        case $2 in
            # lógico --> sólo borra la entrada en el arreglo.
            "logico")
                unset arreglo[$1]
                ;;
            # físico --> borra la entrada en el arreglo y en el FileSystem.
            "fisico")
                rm /var/log/${arreglo[$1]}
                unset arreglo[$1]
                ;;
            *)
                echo "Error: parámetro 2 erroneo."
                exit 1
                ;;
    esac
    else
        echo "Error por dimensión del arreglo."
        exit 1
    
}

# PROGRAMA PRINCIPAL

arreglo=()

# Agregar los nombres de los archivos que contienen "access" en su nombre al arreglo
for archivo in /var/log/*access*; do
    if [[ -f "$archivo" ]]; then  # Verifico si es un archivo
        arreglo+=("$(basename "$archivo")")  # Agrega el nombre del archivo al arreglo [NOTA1]
    fi
done

cantidad
listar
eliminar 3 fisico


# [NOTA1] --> basename toma una ruta de archivo como argumento y devuelve solo el nombre del archivo, 
# sin la parte de la ruta. Ejemplo:
# Si "$archivo" es /var/log/access.log, basename "$archivo" devolverá access.log.
