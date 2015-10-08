#!/bin/bash

menu()
{
echo "1) Sumar dos numeros"
echo "2) Restar dos numeros"
echo "3) multiplicar dos numeros"
echo "4) divide dos numero"
echo "5) Salir"
read -p "introduce la opcion deseada: " num
 return $num



}

funcion()
{
read -p "introduce el primer valor: " V1
read -p "introduce el segundo valor: " V2

case $num in
	1) resultado=$( expr $V1 + $V2 ) ;;
	2) resultado=$( expr $V1 - $V2 ) ;;
	3) resultado=$( expr $V1 \* $V2 ) ;;
	4) resultado=$( expr $V1 / $V2 ) ;;
	5|*) num=5 ;;
esac
}


num=0
until [ $num -eq 5 ]
do
clear
menu
num=$?
if [ $num -eq 5 ]
then
break
else
	funcion
	RESULTADO=$resultado
	echo "El resultado de la operacion es $RESULTADO"
	read -p "Enter para continuar..."
fi
done
