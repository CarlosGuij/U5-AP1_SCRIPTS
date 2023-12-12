#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Uso: $0"
    exit 1
fi

valor=$1

if ! [ "$valor" -gt 0 ] ; then
    echo "Error: El valor debe ser un número positivo mayor que 0."
    exit 1
fi

if [ "$((valor % 2))" -eq 0 ]; then
    echo "El número $valor es par."
else
    echo "El número $valor es impar."
fi
