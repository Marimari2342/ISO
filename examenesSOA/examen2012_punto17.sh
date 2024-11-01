#!/bin/bash

# Realice un script que verifique cada 5 segundos si el proceso apache se está ejecutando en el
# sistema. El script debe correr indefinidamente hasta que verifique que en 10 ocasiones ha
# encontrado el proceso apache corriendo, lo cual debe causar la terminación del proceso. Informar
# dicha acción en pantalla. Y posteriormente causar la terminación del script con condición de
# retorno 50.

# Verificar que no se pasan scripts como parámetro
if [ $# -ne 0 ];then
    echo "Error, este script no recibe parámetros"
    exit 1
fi

cont=0
while [ $cont -lt 10 ];do

    if [ ps aux | grep -q -E 'httpd|apache2' ];then # -q no imprime la salida por terminal
        cont=$((cont+1))
    fi 
    sleep 5
done
echo "Se ha encontrado el proceso apache corriendo 10 veces"
exit 50

