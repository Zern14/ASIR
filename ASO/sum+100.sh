#!/bin/bash

TOT=0

until [ $TOT -gt 100 ]
do
read -p "Introduzca un valor para sumar al total: " SUM
TOT=$(expr $TOT + $SUM)
echo  El total actual es $TOT
read -p "Enter para continuar sumando hasta 100"
done
echo "Has superado 100"
