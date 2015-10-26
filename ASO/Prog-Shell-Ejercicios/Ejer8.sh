#!/bin/bash
id $1 > /dev/null 2>&1

if [ $? -eq 0 ]
then
echo "ID USUARIO	ID GRUPO	GRUPO PRIMARIO,GRUPOS SEGUNDARIOS"
id $1
fi
