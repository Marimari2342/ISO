#!/bin/bash

# Realice un script que agregue a un arreglo los nombres de los archivos del directorio /etc cuya
# terminación sea .conf e implemente las siguientes funciones:
# * cantidad: imprime la cantidad de archivos del /etc con terminación .conf.
# * verArchivos: imprime los nombres de todos los archivos del /etc con terminación .conf.
# * existe <parametro>: recibe como parámetro el nombre de un archivo con terminación .conf e 
# imprime en pantalla si existe en el /etc o no.
# * eliminar <parametro1> <parametro2>: recibe como primer parámetro el nombre de un archivo con
# terminación .conf, y como segundo parámetro la cadena “lógico” o “físico”. Si el segundo parámetro
# es “lógico”, sólo borra la entrada en el arreglo, si es “físico” borra la entrada en el arreglo y
# en el FileSystem, informando en cada caso la acción realizada.

# Verificar que no se pasen parametros
if [ $# -ne 0 ];then
    echo "Error, este script no recibe parámetros"
    exit 1
fi

# crear arreglo
arreglo=()

# agregar lo pedido
for archivo in /etc/*.conf;do
    # me fijo si existe el archivo
    if [ -e "$archivo" ];then
        # lo agrego al arreglo
        arreglo=("$(basename "$archivo")")
    fi
done

# FUNCIONES 
# imprimir la cantidad de elementos del arreglo
cantidad () {
    echo "${#arreglo[*]}"
}

# imprime los nombres de todos los archivos del /etc con terminación .conf.
verArchivos () {
    echo "${arreglo[*]}"
}

# recibe un parámetro y muestra en pantalla si existe o no 
existe () {
    if [ $# -eq 1 ];then
        for i in "$archivo";do
            if [ $1 -eq archivo["$i"] ];then
                echo "archivo $1 encontrado en el /etc"
                return 0
            fi
        done
        echo "No se encontró el archivo"
    else 
        echo "Error, debe pasarse un sólo parámetro"
    fi
}

# elimina el archivo pasado como parámetro de manera logica o fisica (dos parámetros)
eliminar () {
    if [ $# -eq 2 ];then
        encontre=false
        cont=0
        while [ "$encontre"=false ];do
            if [ "$1" -eq arreglo[$cont] ];then
                "$encontre"=true
                case $2 in
                    "logico")
                        unset arreglo[$cont]
                        echo "Borrado lógico"
                        ;;
                    "fisico")
                        unset arreglo[$cont]
                        rm /var/etc/"${arreglo[$cont]}"
                        echo "Borrado físico"
                        ;;
                    "*")
                        echo "Error, parametro 2 incorrecto"
                        exit 1
                        ;;
                esac
            fi
            cont=$((cont+1))
        done
    fi
}