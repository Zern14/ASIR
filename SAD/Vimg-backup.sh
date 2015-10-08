#!/bin/bash

TIMESTAMP="$(date "+%Y-%M-%d_%H-%M")"
IMG_FILE="${1}.img"
NOM_MV="$1"
NAME_INC="${1}_${TIMESTAMP}.img"
REBASE_FILE="$1.img.rebase"
BASE_NAME="${1}_base_${TIMESTAMP}"
NEW_BASE="${1}_base_${TIMESTAMP}.img"
MAX_BACK_CHAIN=3
CONTADOR=0

#Apagar la maquina
virsh shutdown $NOM_MV

# comprueba si la MV ya esta apagada y no continua hasta que este apagada
CHECKMV=nulo
until [ $CHECKMV = "apagado" ]
do
CHECKMV=$(virsh list --all |sed 's/  */:/g' | grep "$NOM_MV" |cut -d":" -f4)
sleep 5
CONTADOR=$(($CONTADOR + 1))
done

# comprueba el numero de incrementos
NUM_INC=$(qemu-img info --backing-chain $IMG_FILE |grep -i backing|wc -l)


# Hace incremento o rebase segun numero incrementos
if [ $NUM_INC -eq $MAX_BACK_CHAIN ]
then
	qemu-img convert -O qcow2 $IMG_FILE $REBASE_FILE

else

	qemu-img create -b $IMG_FILE -f qcow2 $NAME_INC
fi



