#!/bin/bash

# 12 (c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, /. Esta calculadora
# debe funcionar recibiendo la operación y los números como parámetros

# ----------------------

#!/bin/bash

# Verificar que se hayan pasado todos los parámetros
if [ $# -ne 3 ]; then # si el total de parámetros pasados ($#) no es igual (-ne) a 3
    echo "Error: Debes ingresar exactamente 2 números y la operación a realizar como parámetros."
    echo "Uso: $0 num1 operacion num2" # esto es para explicar como usar el script (info más abajo)
    exit 1 # error general
fi

# Leer los números desde los parámetros
num1=$1
operacion=$2
num2=$3

case $operacion in
    +)
        # suma
        suma=$(expr $num1 + $num2)
        echo "$num1 $operacion $num2 => $suma"
        ;;
    -)
        # resta
        resta=$(expr $num1 - $num2)
        echo "$num1 $operacion $num2 => $resta"
        ;;
    \*)
        # multiplicacion
        mult=$(expr $num1 \* $num2)
        echo "$num1 $operacion $num2 => $mult"
        ;;
    /)
        # division
        if ($num2  -eq 0);then
          echo "error => el denominador no puede ser 0"
          exit 1
        else
          division=$(expr $num1 / $num2)
          echo "$num1 $operacion $num2 => $division"
        fi
        ;;
    *)
        # error por ingresar op inválida
        echo "La operación no es válida, la calculadora sólo realiza: +,-,*,/"
        exit 1
        ;;
esac