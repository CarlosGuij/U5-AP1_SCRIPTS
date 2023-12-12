#!/bin/bash

suma=0
cont=0

while true; do
    echo "Introduce un numero:"
    read valor

    if [ "$valor" -eq 0 ]; then
        break
    fi
    suma=$((suma + valor))
    cont=$((cont + 1))
done

if [ "$cont" -eq 0 ]; then
    echo "No se ingresaron valores."
else
    media=$(echo "$suma / $cont" )

    echo "Suma total: $suma"
    echo "Valor medio: $media"
fi
