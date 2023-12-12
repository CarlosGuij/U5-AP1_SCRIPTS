#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 "
    exit 1
fi
n=$1
fibonacci() {
    a=0
    b=1
    for ((i = 0; i < "$1"; i++)); do
        echo -n "$a "
        temp="$a"
        a="$b"
        b=$((temp + b))
    done
    echo
}
fibonacci "$n"
