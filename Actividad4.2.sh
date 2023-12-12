#!/bin/bash

echo "Introduce la cantidad de litros de agua:"
read litros

if ! [ "$litros" -gt 0 ] ; then
    echo "Error: Ingresa una cantidad válida de litros; es decir que sean mayores a 0"
    exit 1
fi

if [ "$litros" -le 50 ]; then
    total=20
elif [ "$litros" -le 200 ]; then
    total=$(echo " 20 + 0.20 * ($litros - 50)")
else
    total=$(echo " 20 + 0.20 * 150 + 0.10 * ($litros - 200)")
fi

echo "El coste total es de $total €."
