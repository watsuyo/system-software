#!/bin/sh

regex=^[0-9]+$

first_arg=$1
second_arg=$2

if [[ !("$first_arg" =~ $regex && "$second_arg" =~ $regex) ]]; then
	echo "引数に整数を2つ入力してください。"
	exit $?
fi

result=null

while [ $result != 0 ]
do
	result=$(($first_arg % $second_arg))
	first_arg=$second_arg
	second_arg=$result
done

echo "最大公約数:$first_arg"
