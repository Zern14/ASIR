#!/bin/bash

if [ -d $1 ]
then
	ls -lR $1 | pr -l23 | more
fi





