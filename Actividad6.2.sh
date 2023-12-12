#!/bin/bash

echo  "Ingrese la cantidad de números aleatorios que el programa generara: "
read  num_aleat

echo  "Ingrese el número mínimo: "
read  num_min

echo "Ingrese el número máximo: "
read  num_max

echo "\Números aleatorios generados:"
for ((i=1; i<=$num_aleat; i++)); do
    valor_aleat=$(( (RANDOM % ($num_max - $num_min + 1)) + $num_min))
    echo $valor_aleat
done

exit 0
