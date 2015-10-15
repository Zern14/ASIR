#!/bin/bash

for FICH in $*
do

	if [ -f $FICH ]
	then
		more $FICH
	fi
done
