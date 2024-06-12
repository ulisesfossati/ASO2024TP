#!/bin/bash

echo "Adivine el Numero aleatorio"
numero=$((RANDOM % 101))
contador=0

while [ $contador -eq 0 ]; do
    echo "Ingrese un numero"
    read numeroIngresado

    if [ $numeroIngresado -eq $numero ]; then
        echo "Numero encontrado!!"
        echo "El numero era: $numeroIngresado"
        contador=1
    elif [ $numeroIngresado -gt $numero ]; then
        echo "Su numero es demasiado alto"
        echo
    else
        echo "Su número es demasiado bajo"
        echo
    fi
done
