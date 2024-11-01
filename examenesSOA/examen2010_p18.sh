#!/bin/bash

# Realice un script que implemente a través de la utilización de funciones las operaciones básicas
# sobre arreglos:
# * inicializar: crea un arreglo llamado array vacio.
# * agregar_elem <parametro1>: agrega al final del arreglo el parámetro recibido.
# * eliminar_elem <parametro1>: elimina del arreglo el elemento que se encuentra en la posición
# recibida como parámetro. Debe validar que se reciba una posición válida.
# * longitud: imprime la longitud del arreglo en pantalla.
# * imprimir: imprime todos los elementos del arreglo en pantalla.
# * inicializar_con_valores <parámetro1> <parámetro2>: crea un arreglo con longitud <parámetro1> y
# en todas las posiciones asigna el valor <parametro2>.

# FUNCIONES

# crea un arreglo llamado array vacio.
inicializar () {
    arreglo=()
}

# agrega al final del arreglo el parámetro recibido.
agregar_elem () {
    if [ $# -eq 1 ];then
        arreglo+=("$1")
    else
        echo "Error, sólo debe recibir un parámetro"
        return 1
    fi
}

# elimina del arreglo el elemento que se encuentra en la posición recibida como parámetro. 
eliminar_elem () {
    if [ $# -eq 1 ];then
        if [ "$1" -ge 0 ] && [ "$1" -lt "${#arreglo[*]}" ];then
            unset arreglo[$1]
            return 0
        else
            echo "Parametro inválido"
            return 1
        fi
    else
        echo "Error, sólo debe recibir un parámetro"
        return 1
    fi
}

# imprime longitud del arreglo en pantalla
longitud () {
    echo "${#arreglo[*]}"
}

# imprime todos los elementos del arreglo en pantalla
imprimir () {
    echo "${arreglo[*]}"
}

# crea un arreglo con longitud <parámetro1> y en todas las posiciones asigna el valor <parametro2>.
inicializar_con_valores () {
    if [ $# -eq 2 ];then
        for (( i = 0; i < "$1"; i++ ));do
            arreglo+=("$2")
        done
    else
        echo "Error, sólo debe recibir dos parámetros"
        return 1
    fi
}