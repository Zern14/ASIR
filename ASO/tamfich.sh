#!/bin/bash

##FICH=$(ls -l|sed 's/  */:/g'|cut -d":" -f10)
##TAM=$(ls -l|sed 's/  */:/g'|cut -d":" -f5)


TT=0
for F in $(ls -l|sed 's/  */:/g'|cut -d: -f5,10)
do
	FICH=$(echo "$F" | cut -d: -f2)
	TAM=$(echo "$F" | cut -d: -f1)
	echo "Nombre: $FICH    	Tamaño: $TAM bytes"
	TT=$(($TT + $TAM))
done

echo "El tamaño total de los archivos es de: $TT bytes"
