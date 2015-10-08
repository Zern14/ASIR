#!/bin/bash

read -p "Introduzca su edad: " EDAD

case $EDAD in
	[0-9]|1[0-3])echo "Niño";;
	1[4-8])echo "Joven";;
	19|[2-9][0-9])echo "Adulto";;
	[1-9][0-9][0-9])echo "Centenario";;
	*)echo "No se que edad tienes";;
esac
