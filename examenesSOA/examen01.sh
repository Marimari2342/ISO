#!/bin/bash

# ENUNCIADO
# Suponga que es administrador de un servidor de correo y se le ha encargado un listado con todos los
# nombres de usuarios que poseen cuenta de mail. Se sabe que un usuario que tiene cuenta de mail 
# posee un directorio llamado mailDir en su directorio personal. Además de tener una cuenta de mail,
# los usuarios del listado deben tener definido a Bash como su Shell por defecto. Para el listado 
# solicitado se debe generar un archivo llamado listado.txt en el /var.

# Siempre verificar cantidad de argumentos que se pasan (en este caso no se tiene que pasar ninguno)
if [ $# -ne 0 ];then
    echo "ERROR: No se deben pasar parámetros"
    exit 1
fi

# Archivo de salida --> generar un archivo llamado listado.txt en el /var
file="/var/listado.txt"

# (opcional) limpia el archivo de salida si ya existe
> "$file"

# Recorrer el archivo /etc/passwd --> para ver los usuarios y generar el listado con lo que me piden
# cat /etc/passwd --> crea un proceso para pasarme el archivo al bucle 
cat /etc/passwd | while read -r line; do # Recorre cada línea de /etc/passwd
    # Extraigo lo que necesito
    dir=$(echo "$line" | cut -d: -f6)
    bash=$(echo "$line" | cut -d: -f7)
    username=$(echo "$line" | cut -d: -f1)
    # Verifico si existe el directorio mailDIr el shell es /bin/bash 
    if [[ "$bash"=="/bin/bash" && -d "$dir/mailDir" ]]; then
        echo "$username" >> "$file"
    fi 
done

# NOTA
# En sistemas Unix y Linux, el formato del archivo /etc/passwd es estándar y sigue siempre la misma estructura. 
# Esto significa que los campos siempre están organizados de la misma manera, separados por dos puntos.
# Los campos típicos son:

# 1. Nombre de usuario [-f1]
# 2. Contraseña (generalmente representada como x o *) [-f2]
# 3. UID (User ID) [-f3]
# 4. GID (Group ID) [-f4]
# 5. Nombre completo o descripción del usuario [-f5]
# 6. Directorio personal (home directory) [-f6]
# 7. Shell por defecto (como /bin/bash) [-f7]