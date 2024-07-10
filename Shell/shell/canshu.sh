#!/bin/bash
if [ $1 = "hello" ];then
    echo "world"
elif [ $1 = "world" ];then
    echo "hello"
else
    echo "urage:/home/program hello or world"
fi
