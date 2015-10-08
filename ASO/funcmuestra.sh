#!/bin/bash

muestra_valores ()
{
	echo $1 $2 $3
}
muestra_valores_en_sentido_inverso ()
{
	echo $3 $2 $1
}

echo Mostrando los argumentos 1, 2 y 3.
echo $1 $2 $3
echo Mostrando los valores pasados a la función.
muestra_valores $1 $2 $3
echo Mostrando los valores pasados a la función de forma inversa.
muestra_valores_en_sentido_inverso $1 $2 $3
