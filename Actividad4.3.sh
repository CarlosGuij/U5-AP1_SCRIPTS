#!/bin/bash
#Escribe un script a modo de calculadora simple, al que se le pasan 3 argumentos: 
#el primer valor, el operador (+, -, *, / ) y el segundo valor. El script deberá informar ante fallos habituales del usuario 
#(p. ej. división entre 0 o no haber pasado los argumentos necesarios o en el orden adecuado). 
#NOTA: Ayúdate del comando expr

if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <valor1> <operador> <valor2>"
    exit 1
fi

n1=$1
n2=$3
operador=$2

expr "$n1" + 1 >/dev/null 
if [ $? -ne 0 ]; then
    echo "Error: '$valor1' no es un valor numérico válido."
    exit 1
fi

expr "$n2" + 1 >/dev/null
if [ $? -ne 0 ]; then
    echo "Error: '$n2' no es un valor numérico válido."
    exit 1
fi

case "$operador" in
    "+")
        result=$(expr "$n1" + "$n2")
        ;;
    "-")
        result=$(expr "$n1" - "$n2")
        ;;
    "*")
        result=$(expr "$n1" \* "$n2")
        ;;
    "/")

        if [ "$n2" -eq 0 ]; then
            echo "Error: No se puede dividir por 0."
            exit 1
        fi
        result=$(expr "$n1" / "$n2")
        ;;
    *)
        echo "Error: Operador no válido. Use +, -, *, /"
        exit 1
        ;;
esac

echo "Resultado: $result"
