#!/bin/bash
read -p "请输入你的IP：" ip
ip1=`echo $ip | awk -F '.' '{print $1}'`
ip4=`echo $ip | awk -F '.' '{print $4}'`
if [ $ip1 -ne 0 -a $ip4 -ne 0 ] && [ $ip1 -le 255 -a $ip1 -ge 0 ] && [ $ip4 -le 255 -a $ip4 -ge 0 ];then
    echo "${ip}符合IP地址规范"
else
    echo "${ip}不符合IP地址规范,请重新输入"
fi
