#!/bin/bash

# 13 (b) Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta. Según
# la opción elegida se le debe mostrar: 
# * Listar: lista el contenido del directoria actual.
# * DondeEstoy: muestra el directorio donde me encuentro ubicado.
# * QuienEsta: muestra los usuarios conectados al sistema.

# ----------------------

# El script debe mostrar 3 opciones de usuario
echo "ingrese numero de opcion de usuario:"
echo "1 --> Listar: lista el contenido del directoria actual."
echo "2 --> DondeEstoy: muestra el directorio donde me encuentro ubicado."
echo "3 --> QuienEsta: muestra los usuarios conectados al sistema."
read opcion

case $opcion in 
  # Listar
  1)
    ls
    ;; 
  # DondeEstoy
  2)
    pwd
    ;; 
  # QuienEsta
  3)
    whoami
    ;; 
  *)
    echo "opcion incorrecta."
    exit 1
    ;;
esac