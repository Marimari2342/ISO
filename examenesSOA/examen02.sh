#!/bin/bash

# ENUNCIADO
# Se desea saber el uso del consumo de recursos del sistema por parte de los usuarios. Desarrolle 
# un script que se correrá ingresando como argumento los nombres de los usuarios de los cuales se 
# necesita obtener dicha información, no se sabe cuentos son con anticipación. Para la realización 
# del script debe definir las siguientes funciones:

# - esta_logueado(): devuelve true si el usuario pasado como parámetro está logueado.
# - cant_procesos(): devuelve la cantidad de procesos que está corriendo el usuario.
# - uso_de_procesos(): devuelve true si el usuario pasado como parámetro, usando la función 
# cant_procesos(), está corriendo más de 100 procesos.

# Utilizando la funcionalidad anterior, el script debe guardar en un archivo de log, en una 
# ubicación apropiada del FileSystem, el nombre de los usuarios que están corriendo más de 100 
# procesos junto con la fecha de ejecución del script.

# Verificar que se pase al menos un parámetro 
if [ $# -eq 0 ];then
    echo "ERROR: no se pasó ningun parámetro"
    exit 1
fi

# FUNCIONES

# - esta_logueado(): true si el usuario pasado como parámetro está logueado.
esta_logueado () {
    # comando who --> muestra info de los usuarios conectados al sistema
    # delimitador de campos en comando who --> " " (espacio)
    # grep -w $1 --> busca el nombre de usuario que se pasa como argumento. 
    # El -w asegura que solo coincida si el nombre es una palabra completa.
    # wc -l --> cuenta cuantas lineas encontró grep [si -ne 0, encontró una coincidencia --> return 0 (true)]
	if [ $(who | cut -d" " -f1 | grep -w $1 | wc -l) -ne 0 ]; then
		return 0
	fi
	return 1
}
# - cant_procesos(): devuelve la cantidad de procesos que está corriendo el usuario.
cant_procesos () {
	esta_logueado $1
	if [ $? -eq 0 ]; then # El valor de retorno se puede evaluar mediante la variable $? [0=true]
		# ps -aux --> Muestra información de los procesos en curso.
        # grep -w $1 --> filtro los procesos de la persona pasada como parámetro
        # wc -l --> cuenta cuantas lineas encontró grep (cant de procesos) y retorna ese número
        return $(ps -aux | grep -w $1 | wc -l)
	else
		return 0 # Si no está conectado retorna 0 (serían 0 procesos)
	fi
}
# - uso_de_procesos(): true si el usuario pasado como parámetro está corriendo más de 100 procesos.
uso_de_procesos(){
    cant_procesos $1
    if [ $? -gt 100 ];then # si son más de 100 procesos devuelve 0 (true)
        return 0
    fi
    return 1
}

# PROGRAMA PRINCIPAL
# creo el archivo file donde voy a guardar los nombres de los usuarios que corran más de 100 procesos.
file="/var/log/listado.txt" 
# limpio el archivo de salida si ya existe
> "$file"
for i in $*;do
    uso_de_procesos $i      # llamo a la funcion 
    if  [ $? -eq 0 ];then   # si me devolvió true (0) --> el usuario corre más de 100 procesos
        echo $i >> "$file"  # agrego el nombre del usuario al archivo
    fi
done

# NOTA
# En sistemas Unix y Linux, los campos que se ven en la salida de who son:

# Nombre de usuario que está logueado. [-f1]
# Terminal en la que el usuario está logueado. [-f2]
# Fecha y hora de inicio de sesión. [-f3]
# Dirección IP o nombre del host. [-f4]