#!/bin/bash

# 13 (a) Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

# ----------------------

# El script a continuación va a mostrar en pantalla los números del 1 al 100 y sus cuadrados
for i in {1..100}; do
  cuadrado=$(($i \* $i))
  echo "Numero: $i, --> Cuadrado del numero: $cuadrado"
done