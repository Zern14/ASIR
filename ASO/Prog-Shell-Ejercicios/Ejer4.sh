#!/bin/bash

if [ -f $1 ]
then
chmod ug+x $1
ls -l $1
fi
