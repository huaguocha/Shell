#!/bin/bash
read -p "num:" num 
if [[ $(echo "$num > 0 && $num <= 10" | bc -l) -eq 1 ]];then
    echo "进入选拔赛"
    read -p "请输入你的性别：" sex
    case $sex in
    man)
        echo "进入男生组"
        ;;
    woman)
        echo "进入女生组"
        ;;
    *)
        echo "重新输入性别"
        ;;
    esac
elif [ $(echo "$num > 10" | bc -l) -eq 1 ];then
    echo "淘汰"
else
    echo "请重新输入"
fi

