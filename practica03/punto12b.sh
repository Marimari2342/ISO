#!/bin/bash

# 12 (b) Modificar el script creado en el inciso anterior para que los números sean recibidos
# como parámetros. El script debe controlar que los dos parámetros sean enviados.

# ----------------------

# Verificar que se hayan pasado dos parámetros
if [ $# -ne 2 ]; then # si el total de parámetros pasados ($#) no es igual (-ne) a 2
    echo "Error: Debes ingresar exactamente 2 números como parámetros."
    echo "Uso: $0 num1 num2" # esto es para explicar como usar el script (info más abajo)
    exit 1 # error general
fi

# Leer los números desde los parámetros
num1=$1
num2=$2

# multiplicacion
mult=$(expr $num1 \* $num2)
echo "multiplicacion => $mult"

# suma
suma=$(expr $num1 + $num2)
echo "suma => $suma"

# resta
resta=$(expr $num1 - $num2)
echo "resta => $resta"

# mayor de ambos
if [$num1 -gt $num2];then
  echo "Mayor numero => $num1"
else
  echo "Mayor numero => $num2"
fi