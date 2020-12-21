#!/bin/bash

maxlineas=`cat precipitaciones.txt | wc -l`

acumulador=0
contador=0
media=0

while [ $contador -le $maxlineas ]; do
 litros=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}'`
 acumulador=$((acumulador+litros))
 contador=$((contador+1))
done

media=$((acumulador/contador))
echo "La media de precipitaciones es: $media litros"

