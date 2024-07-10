#!/bin/bash

# 脚本路径：/home/program

if [ "$#" -ne 1 ]; then
    echo "usage: /home/program hello or world"
elif [ "$1" = "hello" ]; then
    echo "world"
elif [ "$1" = "world" ]; then
    echo "hello"
else
    echo "usage: /home/program hello or world"
fi

