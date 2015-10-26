#!/bin/bash
menu()
{
clear
echo "1) Mostrar grupos y sus usuario ordenados por nombre de grupo"
echo "2) Mostrar grupos y sus usuario ordenados por numero de grupo"
echo "3) Salir del programa"
read -p "Selecciona una opcion del menu: " OP

case $OP in
	1)	clear
		echo "Nombre:ID_Grupo:Usuarios"
		sort /etc/group |cut -d: -f1,3,4;;


	2)	clear
		echo "Nombre:ID_Grupo:Usuarios"
		sort -n -t: -k3 /etc/group |cut -d: -f1,3,4;;

	3)exit;;
esac
read -p "Enter para continuar..."

}

$OP = 0
until [ $OP -eq 3 ]
do
menu
done
