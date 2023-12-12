#!/bin/bash

echo "Escribe un numero mayor que 0"
read num

if [ $num -gt 0 ]
then
if (( $num %2 == 0 )); then
    echo "El número es par."
    else
    echo "El número es impar."
fi
else
echo "NO VALIDO, Introduce un número que sea mayor que 0"
fi

