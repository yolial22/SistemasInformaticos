#!/bin/bash

maxlineas=`cat precipitaciones.txt | wc -l`
contador=0

while [ $contador -le $maxlineas ]; do
 dia=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $1}'`
 litros=`cat precipitaciones.txt | head -$contador | tail -1 | awk '{print $2}'`

 if [ $litros -eq 0 ]; then
  echo "El dia $dia (`./diasem.sh $dia`) no llovio"
 fi

 contador=$((contador+1))
done
