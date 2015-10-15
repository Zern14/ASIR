#!/bin/bash

echo "USUARIO:HOME:SHELL"

for USUARIO in /etc/passwd
do
echo "$(cut -d: -f1,6,7 $USUARIO|sort)"
done
