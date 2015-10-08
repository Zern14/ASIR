#!/bin/bash

retorno_con_return ()
{
	if [ $1 -eq 0 ] ;	then return 10; else return 20; fi
}
retorno_con_variables_globales ()
{
	if [ $1 -eq 0 ] ;	then variable_global=diez; else variable_global=veinte; fi
}
retorno_con_return 0
echo $?
retorno_con_variables_globales 0
echo $variable_global
