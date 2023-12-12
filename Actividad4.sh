#!/bin/bash



while true; do
    read -p "Ingrese un valor del día (1-30): " dia

    
    if [ "$dia" -ge 1 ] && [ "$dia" -le 30 ]; then
        
        dia_semana=$((($dia - 1) % 7))

        case $dia_semana in
            0) nombre_dia="Lunes" ;;
            1) nombre_dia="Martes" ;;
            2) nombre_dia="Miércoles" ;;
            3) nombre_dia="Jueves" ;;
            4) nombre_dia="Viernes" ;;
            5) nombre_dia="Sábado" ;;
            6) nombre_dia="Domingo" ;;
        esac

        echo "El día $dia es un $nombre_dia."
        exit
    else
        echo "Error: Escriba un valor válido entre 1 y 30"
    fi
done