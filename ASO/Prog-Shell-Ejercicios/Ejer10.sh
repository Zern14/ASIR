#!/bin/bash

ligass()
{
read -p "Selecciona la carpeta a listar: " DIR
ls -l $DIR |grep '^l'
}

ligash()
{
read -p "Selecciona la carpeta a listar: " DIR
ls -l $DIR |grep ' 2 '
}

OP=0
until [ OP -eq 3 ]
do
clear
echo "1) Ejecutar ligass"
echo "2) Ejecutar ligash"
echo "3) Salir"
read -p "Selecciona tu opcion: " OP


case $OP in
	1)ligass
	read -p "Enter para continuar...";;
	2)ligash
	read -p "Enter para continuar...";;
	3)exit;;
esac

done
