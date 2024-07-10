#!/bin/bash
read -p "please input you search for dir:" run
ls $run > /dev/null
if [ $? -eq 0 ];then
	echo "${run}存在"
	rm -rf $run
else 
	echo "${run}不存在"
	mkdir $run
fi
