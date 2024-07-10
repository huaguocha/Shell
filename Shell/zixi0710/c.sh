#!/bin/bash
read -p "please input your number：" num
if [ $[ $num % 2 ] -eq 0 ];then
    echo "$num 是偶数"
elif [ $[$num % 2 ] -eq 1 ];then
    echo "$num 是奇数"
fi
