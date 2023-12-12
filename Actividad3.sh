#!/bin/bash
echo "Introduce un numero"
read num

if [ $num -gt 0 ]; then
for i in $( seq 0 $num ); do
echo $i
done
else
echo "Introduce un numero mayor que 0"
fi