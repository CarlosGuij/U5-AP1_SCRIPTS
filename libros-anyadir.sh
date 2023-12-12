#!/bin/bash


archivo_bd="bdlibros.txt"


generos=("Informática" "Deportes" "Ciencia Ficción" "Misterio" "Historia" "Biografía" "Otros")

mostrar_generos() {
    echo "Géneros disponibles:"
    for ((i=0; i<${#generos[@]}; i++)); do
        echo "$(($i+1)). ${generos[$i]}"
    done
}

echo "Ingrese el título del libro: " 
read $titulo
echo "Ingrese el año del libro: " 
read $ano
echo "Ingrese la editorial del libro: " 
read $editorial

mostrar_generos

echo "Ingrese el número correspondiente al género del libro: " 
read $genero



genero=${generos[$(($opcion_genero-1))]}

echo "$titulo | $ano | $editorial | $genero" >> "$archivo_bd"

echo "Los datos del libro se han añadido correctamente al archivo $archivo_bd."
