#!/bin/bash

echo "Ingrese la Primera CADENA:"
read cadena1

echo "Ingrese la SEGUNDA CADENA:"
read cadena2

if [ "$cadena1" = "$cadena2" ]; then
    echo "Las cadenas son IGUALES."
else
    echo "Las cadenas son DIFERENTES."
fi
