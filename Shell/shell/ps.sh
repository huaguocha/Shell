#!/bin/bash
read -p "please input your ps:" pid
ps -ef | grep -v grep | grep $pid > /dev/null
if [ $? -eq 0 ];then
	echo "进程${pid}存在"
else
	echo "进程${pid}不存在"
fi
