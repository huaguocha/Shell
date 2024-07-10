#!/bin/bash
read -p "please input your ip:" ip
ping $ip -c1 > /dev/null
if [ $? -eq 0 ];then
	echo "success $ip"
else
	echo "false $ip"
fi
