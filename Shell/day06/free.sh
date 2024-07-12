#!/bin/bash
#mem=`free -m | awk 'NR>1' | awk 'NR==1{print $3}'`
#swap=`free -m | awk 'NR>1' | awk 'NR==2{print $3}'`
#Mtotal=`free -m | awk 'NR>1' | awk 'NR==1{print $2}'`
#Stotal=`free -m | awk 'NR>1' | awk 'NR==2{print $2}'`
#if [ $mem -lt $Mtotal ];then
#    echo "系统内存使用量为：$mem"
#else
#    echo "内存不足，请及时查看内存使用情况"
#fi
#if [ $swap -lt $Stotal ];then
#    echo "交换分区使用量为：$swap"
#else
#    echo "分区使用不足，请及时查看分区使用情况"
#fi
mem=`free -m | awk 'NR==2{printf "%.2f",$3*100/$2}'`
#free -m | grep Mem | awk '{print $3/$2 * 100}'
swap=`free -m | awk 'NR==3{printf "%.2f",$3*100/$2 }'`
echo "内存使用率：$mem%"
echo "交换分区使用率：$swap%"
