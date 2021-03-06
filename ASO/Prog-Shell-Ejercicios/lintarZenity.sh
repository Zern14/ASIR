#!/bin/bash


comprimir()
{
FILES=`zenity --file-selection --multiple --separator=" " --title="Selecione los Archivos"`
DESTINO=`zenity --file-selection --save --title="Selecione el Destino(Poner .tar.gz al final)"`

case $? in
         0)
                tar -czvf $DESTINO $FILES;;
         1)
                echo "No ha seleccionado ningún archivo.";;
        -1)
                echo "Ha ocurrido un error inesperado.";;
esac
}

descomprimir()
{
NOM=`zenity --file-selection --title="Selecione el Archivo"`
DESTINO=`zenity --file-selection --directory --title="Selecione el Destino"`
tar -zxvf $NOM -C $DESTINO

}



OP=0
until [ $OP -eq 3 ]
do

clear
echo "1)Comprimir"
echo "2)Descomprimir"
echo "3)Salir"
read -p "Elije una opcion: " OP

case $OP in
	1)comprimir
	read -p "Enter para continuar...";;
	2)descomprimir
	read -p "Enter para continuar...";;
	3)exit;;
esac
done
