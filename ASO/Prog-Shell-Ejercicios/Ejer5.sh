#!/bin/bash

mkdir -p ~/bin/

CONTADOR=0

for FICH in *
do

	if [ -x $FICH ]
	then
	cp -f $FICH ~/bin/
	echo $FICH
	CONTADOR=$((${CONTADOR}+1))
	fi
done

echo "Total de archivos copiados $CONTADOR"
