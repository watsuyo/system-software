#!/bin/bash

result=$(bash ./greatest-common-divisor.sh 5 10)

if [ $result = "最大公約数:5" ] ; then
	echo "OK"
	exit 0
else
	echo "NG"
	exit 1
fi

