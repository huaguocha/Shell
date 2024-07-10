#!/bin/bash
read -p "please input number:" num
if [ $num -eq 1 ];then
    echo $num "不是质数"
    exit
fi

for ((i=2;i<$num;i++))
do
    echo "他的值：" $num
    if [ $(($num % $i)) -eq 0 ]
    then
        echo "$num 不是质数"
        exit
    fi
done
        echo $num "是质数"
