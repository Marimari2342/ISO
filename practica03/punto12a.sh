#!/bin/bash

# 12 (a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e
# imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

# ----------------------

# Voy a realizar un script que solicite al usuario dos numeros, e imprima multiplicación,
# suma, resta y el mayor de los números leidos

echo "ingrese dos numeros"
read num1 num2

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