opcion=1
while [ $opcion -lt 4 ] && [ $opcion -gt 0 ]
do
	clear
	echo "Menu (selecciona un comando)"
	echo "1-ls"
	echo "2-tree"
	echo "3-ifconfig"
	echo "4-Salir"
	echo "Introduzca una opcion: "
  read opcion
	case $opcion in
		1)echo "Ejecutando ls";ls;read -p"Enter para continuar";;
		2)echo "Ejecutando tree";tree;read -p"Enter para continuar";;
		3)echo "Ejecutando ifconfig";ifconfig;read -p"Enter para continuar";;
		4|0)echo "Fin de programa";;
		*)echo "Opcion no valida";opcion=1;read -p"Enter para continuar";;
	esac
done
