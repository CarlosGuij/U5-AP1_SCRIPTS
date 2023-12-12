#!/bin/bash

buscar_titulo() {
    echo "Ingrese el título del libro a buscar:"
    read titulo
    grep -i "$titulo" bdlibros.txt
}

buscar_año() {
    echo "Ingrese el año del libro a buscar:"
    read año
    grep -i "$año" bdlibros.txt
}

buscar_edit() {
    echo "Ingrese la editorial del libro a buscar:"
    read editorial
    grep -i "$editorial" bdlibros.txt
}

buscar_genero() {
    echo "Ingrese el género del libro a buscar:"
    read genero
    grep -i "$genero" bdlibros.txt
}

insert_libro() {
    echo "Ingrese los detalles del nuevo libro (título, año, editorial, género):"
    read titulo anio editorial genero
    echo "$titulo|$anio|$editorial|$genero" >> bdlibros.txt
    echo "Libro insertado correctamente."
}

while true; do
    echo "Menú de opciones:"
    echo "1) Buscar por título"
    echo "2) Buscar por año"
    echo "3) Buscar por editorial"
    echo "4) Buscar por género"
    echo "5) Insertar libro"
    echo "6) Salir"

    read opcion

    case $opcion in
        1) buscar_por_titulo ;;
        2) buscar_por_año ;;
        3) buscar_por_editorial ;;
        4) buscar_por_genero ;;
        5) insertar_libro ;;
        6) echo "Saliendo del programa. ¡Hasta luego!"; exit ;;
        *) echo "Opción no válida. Inténtelo de nuevo." ;;
    esac
done
