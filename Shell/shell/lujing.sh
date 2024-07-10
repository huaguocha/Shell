#!/bin/bash
read -p "please input a way:" way
test -e $way
if [ $? -eq 0 ];then
    echo "该${way}存在"
	test -d $way
            if [ $? -eq 0 ];then
                echo "${way}是目录"
            else
		echo "${way}是文件"
            fi
else
    echo "该${way}不存在"
fi
