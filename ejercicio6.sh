#!/bin/bash

numero=`ls $1/*.txt |wc -w`
echo "Tenemos $numero de ficheros con la extension txt que vamos a borrar de $1"
rm $1/*.txt
echo "Contenido de $1 tras el borrado de los ficheros txt"
ls -l $1
