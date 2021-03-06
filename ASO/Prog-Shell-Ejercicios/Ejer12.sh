#!/bin/bash

TOT=0
BYT=$(cat respaldo.error |cut -d" " -f4)

for SUM in $BYT
do
TOT=$(($TOT + $SUM))
done

echo "El total en Bytes es: $TOT Bytes"

MiB=$(($TOT / 1024))
echo "El total en MebiBytes es: $MiB MiB"

GiB=$(($MiB / 1024))
echo "El total en GibiBytes es: $GiB GiB"
