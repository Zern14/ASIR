#!/bin/bash 

read -p "Introduzca el nombre del archivo a inspeccionar: " FICH 

if [ -r $FICH ] 
then 
LECT=$(echo "se puede") 
else 
LECT=$(echo "no se puede") 
fi 

if [ -w $FICH ] 
then 
ESCR=$(echo "se puede") 
else 
ESCR=$(echo "no se puede") 
fi 


if [ -x $FICH ] 
then 
EJEC=$(echo "se puede") 
else 
EJEC=$(echo "no se puede") 
fi 


echo "El fichero $FICH $LECT leer, $ESCR escribir y $EJEC ejecutar"
