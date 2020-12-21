#!/bin/bash

if [ -d $1 ]; then
 echo `./7.sh $1`
else
 echo "El directorio $1 no existe"
fi
