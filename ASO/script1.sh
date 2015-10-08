#!/bin/bash

if [ $# -eq 2 ]
then

	if [ $1 -ge 0 ] && [ $1 -le 100 ]
	then
		echo "El primer valor esta comprendodo entre 0 y 100"
	else
		echo "El primer valor no esta comprendidos entre 0 y 100"
	fi

	if [ $2 -ge 0 ] && [ $2 -le 100 ]
	then
		echo "El segundo valor esta comprendodo entre 0 y 100"
	else
		echo "El segundo valor no esta comprendidos entre 0 y 100"

else
	echo "no se han introducido dos valores"

fi
