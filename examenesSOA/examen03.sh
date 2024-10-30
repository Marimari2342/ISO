#!/bin/bash

# ENUNCIADO
# Escribir un script de Bash que reciba un nombre de usuario como parámetro. Si el usuario ingresado
# como parámetro NO es un usuario del sistema, el script debe finalizar con el código de error 1. En
# caso contrario, debe verificar cada 30 segundos si el usuario está logueado. Al detectar que está
# logueado debe registrar en un archivo llamado access-<nombre_usuario>.log el nombre del usuario 
# junto con la fecha en que se lo detectó. NO debe borrar el contenido previo de este archivo y este
# archivo debe escribirlo en una ubicación apropiada del FileSystem. Al detectar 30 veces que el
# usuario está logueado el script debe finalizar con el código de error 0.

# Verificar que se pasó UN SÖLO parámetro 
if [ $# -ne 1 ];then
    echo "Error: no se pasó UN SOLO parametro"
    error 1
fi

# Crear el archivo 
file="/var/log/access-$1.log"

# Si no es usuario del sistema, error 1
if [ $(cat /etc/passwd | cut -d: -f1 | grep -w $1 | wc -l) -eq 0 ];then
    echo "$1 no es un usuario del sistema."
    exit 1
fi
# Sino, verificar cada 30 segundos si esta logueado
else 
    cont=0
    while ("$cont"!=30); do
        if [ $(who | cut -d" " -f1 | grep -w $1 | wc -l) -ne 0];then
            echo "Usuario $1 conectado, fecha $date" >> "$file"
            cont++
        fi
        sleep 30
    done
    exit 0
fi
# Cuando esta logueado registrar lo pedido (30 veces)