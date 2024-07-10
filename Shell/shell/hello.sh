#!/bin/bash
read -p "please input a canshu:" canshu
a=$canshu
if [ $a == "hello" ];then
    echo "world"
elif [ $a == "world" ];then
    echo "hello"
else
    echo "usage:/home/program hello or world"
fi 
