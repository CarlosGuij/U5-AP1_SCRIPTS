#!/bin/bash

echo "Escriba el primer número: "
read num1

echo "Escriba el segundo número"
read num2

if [ "$num1" -gt "$num2" ]; then
    echo "El primer número es mayor que el segundo número."
elif [ "$num1" -lt "$num2" ]; then
    echo "El segundo número es mayor que el primer número."
else
    echo "Ambos números son iguales."
fi

exit 0
