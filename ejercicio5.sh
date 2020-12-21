#!/bin/bash

maxlineas=`cat listado.txt | wc -l`
numerolinea=1


windows=0
linux=0
windowsprocesos=0
linuxprocesos=0

while [ $numerolinea -le $maxlineas ]; do
 linea=`cat listado.txt | head -$numerolinea | tail -1`
 usuario=`echo $linea | awk '{print $1}'`
 so=`echo $linea | awk '{print $2}'`
 procesos=`echo $linea | awk '{print $3}'`

 if [ $so = "Windows" ]; then
  windows=$((windows+1))
  windowsprocesos=$((windowsprocesos+1))
 fi

 if [ $so = "Linux" ]; then
  linux=$((linux+1))
  linuxprocesos=$((linuxprocesos+1))
 fi

 numerolinea=$((numerolinea+1))
done
echo "Windows -> $windows $windowsprocesos"
echo "LInux -> $linux $linuxprocesos"
