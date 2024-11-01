#!/bin/bash

# Implemente un script que agregue a un arreglo todos los archivos del directorio /home, cuya
# terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan acceder
# a la estructura creada:
# * verArchivo <nombre_del_archivo>: imprime el archivo en pantalla si el mismo se encuentra en el
# arreglo. Caso contrario imprime el mensaje de error “Archivo no encontrado” y devuelve como valor
# de retorno 5.
# * cantidadArchivos: imprime la cantidad de archivos del /home con terminación .doc.
# * borrarArchivo <nombre_del_archivo>: consulta al usuario si quiere eliminar el archivo lógicamente.
# Si el usuario responde Si, elimina el elemento sólo del arreglo. Si el usuario responde No,
# elimina el archivo del arreglo y también del FileSystem. Debe validar que el archivo exista en el
# arreglo. En caso de no existir, imprime el mensaje de error “Archivo no encontrado” y devuelve
# como valor de retorno 10.

# Verificar que el script no reciba parametros
if [ $# -ne 0 ];then
    echo "Error, este script no recibe parámetros"
    exit 1
fi

# Crear arreglo vacio
arreglo=()

# Agregar al arreglo
for archivo in /home/*.doc;do
    if [ -e "$archivo" ];then
        arreglo+=("$(basename "$archivo")")
    fi
done

# FUNCIONES

# imprime el archivo en pantalla si el mismo se encuentra en el arreglo
verArchivo () {
    if [ $# -eq 1 ];then
        for i in "${arreglo[*]}";do
            if [ "$1" == "$i" ];then
                cat "/home/$i"  # Imprimir el contenido del archivo
                return 0
            fi
        done
        echo "Error, archivo no encontrado"
        return 5
    else
        echo "Error, sólo debe pasarse un parámetro"
        return 1
    fi
}

# imprimo la cantidad de archivos en el arreglo
cantidadArchivos () {
    echo "${#archivo[*]}"
}

# eliminado logico o fisico (verificar 2 parametros)
borrarArchivo () {
    if [ $# -eq 1 ];then
        for i in "${!arreglo[*]}";do
            echo "Desea eliminar el archivo"
            read opcion
            if [ "$1" == "$i" ];then
                case $opcion in 
                    "no")
                        unset arreglo[$i]
                        echo "Borrado logico de $1"
                        ;;
                    "si")
                        unset arreglo[$i]
                        rm "/home/$1"
                        echo "Borrado fisico de $1"
                        ;;
                    "*")
                        echo "Error, respuesta inválida"
                        return 1
                esac  
                return 0   
            fi
        done  
        echo "Error, archivo no encontrado"
        return 10         
    else
        echo "Error, deben pasarse 2 parámetros"
        return 1
    fi
}


