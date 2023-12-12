#!/bin/bash

palabras=()

while true; do
    echo "Introduce una palabra: "
    read palabra
    
    if [ "${palabra,,}" == "fin" ]; then
        break  
    else
        palabras+=("$palabra")
    fi
done

echo  "Se mostraron ${#palabras[@]} palabras."

=$'\n' palabras_ordenadas=($(sort <<<"${palabras[*]}"))
echo "Palabras ordenadas alfabéticamente:"
for p in "${palabras_ordenadas[@]}"; do
    echo "$p"
done
