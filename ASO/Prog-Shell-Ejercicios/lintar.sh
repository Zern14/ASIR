#!/bin/bash


comprimir()
{
read -p "Seleccione el numero de archivos a comprimir(maximo 5): " NUM
case $NUM in
	1)read -p "Fichero 1" $FICH1
	read -p "Nombre Archivo comprimido: " NOM
	tar -czf $NOM $FICH1;;
	2)read -p "Fichero 1" $FICH1
	read -p "Fichero 2" $FICH2
        read -p "Nombre Archivo comprimido: " NOM
	tar -czf $NOM $FICH1 $FICH2;;
	3)read -p "Fichero 1" $FICH1
        read -p "Fichero 2" $FICH2
	read -p "Fichero 3" $FICH3
        read -p "Nombre Archivo comprimido: " NOM
	tar -czf $NOM $FICH1 $FICH2 $FICH3;;
	4)read -p "Fichero 1" $FICH1
        read -p "Fichero 2" $FICH2
	read -p "Fichero 3" $FICH3
        read -p "Fichero 4" $FICH4
        read -p "Nombre Archivo comprimido: " NOM
	tar -czf $NOM $FICH1 $FICH2 $FICH3 $FICH4
	5)read -p "Fichero 1" $FICH1
	read -p "Fichero 2" $FICH2
	read -p "Fichero 3" $FICH3
	read -p "Fichero 4" $FICH4
	read -p "Fichero 5" $FICH5
        read -p "Nombre Archivo comprimido: " NOM
	tar -czf $NOM $FICH1 $FICH2 $FICH3 $FICH4 $FICH5;;
	*);;
}

descomprimir()
{
read -p "Nombre del archivo a descomprimir: " NOM
read -p "Ruta donde descomprimir: " RUT
tar -zxvf $NOM $RUT

}




until [ $OP -eq 3 ]
do

clear
echo "1)Comprimir"
echo "2)Descomprimir"
echo "3)Salir"
read -p "Elije una opcion: " OP

case $OP in
	1)comprimir;;
	read -p "Enter para continuar...";;
	2)descomprimir;;
	read -p "Enter para continuar...";;
	3)exit;;




done
