#!/bin/bash


while true; do
    echo "Ingrese la nota: "
    read nota

    nota=$((nota))

    if [ "$nota" -lt 5 ]; then
        echo "Calificación: Suspendido"
    elif [ "$nota" -lt 7 ]; then
        echo "Calificación: Aprobado"
    elif [ "$nota" -lt 8 ]; then
        echo "Calificación: Bien"
    elif [ "$nota" -lt 9 ]; then
        echo "Calificación: Notable"
    else
        echo "Calificación: Sobresaliente"
    fi

    break
done

exit 0
