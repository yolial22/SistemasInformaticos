#!/bin/bash

pares=0
impares=0

echo "pares"
for i in $(cat numeros.txt); do
 let resto=$i%2
 if [ $resto -eq 0 ]; then
  echo $i
  pares=$((pares+1))
 fi
done
echo "La suma de los pares es: $pares"

echo "impares"
for i in $(cat numeros.txt);do
 let resto=$i%2
 if [ $resto -ne 0 ]; then
  echo $i
  impares=$((impares+1))
 fi
done
echo "La suma de los impares es: $impares"
