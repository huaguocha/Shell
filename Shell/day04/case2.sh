#!/bin/bash
while true
do
read -p "please input your munu：" menu1
case $menu1 in 
h)
    cat <<-EOF
        h    显示命令帮助
        f    显示磁盘分区
        d    显示磁盘挂载
        m    查看内存使用
        u    查看系统负载
        q    退出程序
EOF
    ;;
f)
    fdisk -l
    ;;
d)
    df -h
    ;;
m)
    free -m
    ;;
u)
    w
    ;;
q)
    exit
    ;;
esac
done
