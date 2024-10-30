#!/bin/bash

# Realice un script que implemente a través de la utilización de arreglos las siguientes funciones:

# * insert <elemento>(): la función recibe un parámetro (debe validar que así sea). Agrega al final
# del arreglo el elemento recibido como parámetro.
# * rellenar <parametro>(): esta función itera la cantidad de veces pasadas como parámetro,
# solicitando al usuario en cada iteración que ingrese un patrón de texto, y agregándolo al final
# del arreglo. Debe validar que se reciba un parámetro.
# * selecc <elemento>(): la función recibe un parámetro (validar), y si el parámetro es una * 
# entonces imprime todos los elementos del arreglo; mientras que si es distinto de *deberá verificar
# si en el arreglo existe un elemento que sea igual al parámetro. Si existe deberá imprimirlo en
# pantalla, caso contrario imprimirá “elemento no encontrado”.
# * delete <elemento>(): la función recibe un parámetro (validar), y si el parámetro es una * 
# entonces eliminará todos los elementos del arreglo; mientras que si es distinto de *deberá 
# verificar si en el arreglo existe un elemento que sea igual al parámetro. Si existe deberá 
# eliminarlo, caso contrario imprimirá “elemento no encontrado”.

# Además de las funciones debe proveer un ejemplo de uso de las funciones codificadas.

# verifico que el script no reciba parámetros
if [ $# -ne 0 ];then
    echo "Error: no deben pasarse parámetros."
    exit 1
fi
# creo un arreglo vacio
arreglo=()

# FUNCIONES
# la funcion recibe como parámetro la cantidad de parámetros pasados a la funcion que la llama.
# si sólo es 1 devuelve true (0)
verificar (){
    if [ $1 -eq 1 ];then    
        return 0
    fi
    return 1
}

# Agrego al final el elemento recibido como parámetro
insert () {
    verificar "$#"
    if [ $? -eq 0 ];then
        arreglo+="$1"
    else 
        echo "Error: no se pasó un sólo parámetro"
        exit 1
    fi
}

# esta función itera la cantidad de veces pasadas como parámetro, solicitando al usuario en cada
# iteración que ingrese un patrón de texto, y agregándolo al final del arreglo.
rellenar () {
    verificar "$#"
    if [ $? -eq 0 ];then
        for ((i=0; i < $1; i++));do
            echo "Ingrese un elemento del arreglo"
            read elem
            insert elem
        done
    else 
        echo "Error: no se pasó un sólo parámetro"
        exit 1
    fi
}

# si el parámetro es una * entonces imprime todos los elementos del arreglo; sino deberá verificar
# si en el arreglo existe un elemento que sea igual al parámetro. Si existe deberá imprimirlo en
# pantalla, caso contrario imprimirá “elemento no encontrado”.
selecc () {
    verificar "$#"
    if [ $? -eq 0 ];then
        if [ $1 -eq "*" ];then
            # imprimo todos los elementos del arreglo
            echo ${arreglo[*]}
            return
        else
            encontre=false
            cont=0
            # veo si existe el elemento
            while ("$encontre"=false && "$cont" -ne "${#arreglo[*]}");do
                # si lo encuentro
                if [ "$arreglo[$cont]" -eq "$1" ];then
                    encontre=true
                    echo "Elemento $1 en posicion $cont"
                    return
                fi
                cont++
            done
            # si no encontre el elemento
            if [ "$encontre"=false ];then
                echo "elemento no encontrado"
                return
            fi
    else 
        echo "Error: no se pasó un sólo parámetro"
        exit 1
    fi
}

# si el parámetro es una * eliminará todos los elementos del arreglo; sino deberá verificar si en 
# el arreglo existe un elemento que sea igual al parámetro. Si existe deberá eliminarlo, sino 
# imprimirá “elemento no encontrado”.
delete () {

}

# PROGRAMA PRINCIPAL

insert "chau"
rellenar 2
select *
delete "hola"