#!/bin/bash

# エラーを発生させたい場合は引数をコメントする
first_arg=5
second_arg=10

result=$(bash ./greatest-common-divisor.sh $first_arg $second_arg)

if [ "$result" = "最大公約数: 5" ]
then
        echo "Success"
        exit 0
elif [ "$result" = "引数に整数を2つ入力してください。" ]
then
        echo "Correct error"
        exit 2
else
        echo "The error did not show up"
        exit 1

fi
