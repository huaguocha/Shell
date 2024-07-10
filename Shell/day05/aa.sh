#!/bin/bash
file=/network/ifcfg-ens33
boot=`sed -n '/^BOOT/p' /network/ifcfg-ens33 | cut -d '=' -f2`
if [ $boot == 'dhcp' ];then
    sed -i 's/dhcp/static/' $file
else
    echo $boot
fi
ip=`hostname -I`
IPADDR=$ip
NETMASK=`ifconfig | sed -n '/inet/p' | sed -n '1p' | sed 's/^ \+//' | cut -d ' ' -f5`
GATEWAY=`ip route | cut -d ' ' -f3 | sed -n '1p'`
sum=`sed -nr '/IPADDR|NETMASK|GATEWAY/p' $file`
if [ -z $sum ];then
    echo "为空"
    echo "IPADDR=${ip}" >> $file
    echo "NETMASK=${NETMASK}" >> $file
    echo "GATEWAY=${GATEWAY}" >> $file
else
    echo "有值"
    sed -ir "s/IPADDR.*/IPADDR=$ip/g" $file    
    sed -ir "s/NETMASK.*/NETMASK=$NETMASK/g" $file
    sed -ir "s/GATEWAY.*/GATEWAY=$GATEWAY/g" $file
fi
#sudo echo "nameserver 114.114.114.114" > /etc/resolv.conf
