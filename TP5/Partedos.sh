#!/bin/bash

ciudad="Mendoza"
clave_api="455b11411e874dc197841913241206"
datos_clima=$(curl -s "http://api.weatherapi.com/v1/current.json?key=$clave_api&q=$ciudad")

clima=$(echo "$datos_clima" | jq '.current.condition.text' -r)
temperatura=$(echo "$datos_clima" | jq '.current.temp_c')
sensacion_termica=$(echo "$datos_clima" | jq '.current.feelslike_c')

echo "El clima de $ciudad es: $clima y la temperatura es: $temperatura °C"