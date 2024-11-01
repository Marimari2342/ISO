#!/bin/bash

# Realice un script que agregue todos los nombres de usuario del sistema a un arreglo e implemente
# las siguientes funciones:
# * existe <parametro1>: devuelve 0 si el usuario existe en el arreglo, 1 en caso contrario.
# * eliminar_usuario <parametro1>: si el usuario pasado como parámetro existe en el arreglo, lo
# elimina del mismo. Caso contrario devuelve código de error 2.
# * usuarios_con_patron <paramtro1>: recorre el arreglo e imprime en pantalla los nombres de los
# usuarios que contengan el patrón pasado como parámetro. Si no encuentra ninguno, devuelve el
# código de error 102.

# verifico que no se pasen parámetros (puesto que el ejercicio no los requiere)
if [ $# -ne 0 ];then
    echo "Error, este script no recibe parámetros"
    exit 1
fi

# creo arreglo y agrego todos los nombres de usuario del sistema a un arreglo.
arreglo=($(cat etc/passwd | cut -d: -f1))

# devuelve 0 si el usuario existe en el arreglo, 1 en caso contrario.
existe () {
    if [ $# -eq 1 ];then
        cont=0
        while [ "$cont" -lt "${#arreglo[*]}" ];do
            if [ "$arreglo[$cont]" -eq $1 ];then
                return 0
            fi
            cont=$((cont + 1))
        done
        return 1
    else
        echo "Error: sólo debe pasar un parámetro"
        return 
    fi
}

# si el usuario pasado como parámetro existe en el arreglo, lo elimina, sino devuelve código de error 2.
eliminar_usuario() {
    if [ $# -eq 1 ];then
    cont=0
    while [ "$cont" -lt "${#arreglo[*]}" ];do
            if [ "$arreglo[$cont]" -eq $1 ];then
                unset arreglo[$cont]
            fi
            cont=$((cont + 1))
        done
        return 2
    else
        echo "Error: sólo debe pasar un parámetro"
        return 
    fi
}

# recorre el arreglo e imprime en pantalla los nombres de los usuarios que contengan el patrón 
# pasado como parámetro. Si no encuentra ninguno, devuelve el código de error 102.
usuarios_con_patron() {
    if [ $# -eq 1 ];then
        encontre=false
        for (i=0;i<"${#arreglo[*]}";i++);do
            if [ grep $1 "$arreglo[$i]" ];then
                echo "$arreglo[$i]"
                $encontre=true
            fi
        done
        if [ $encontre=false ];then
            return 102
    else
        echo "Error: sólo debe pasar un parámetro"
        return 
    fi
}