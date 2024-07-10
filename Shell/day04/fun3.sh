#!/bin/bash
#fun(){
#    read -p "please input name：" name
#    if [ -z $name ];then
#        fun
#    else 
#        echo $name
#    fi
#}
#fun

input_fun(){
    input_var=""
    output_var=$1
    while [ -z $input_var ]
    do
         read -p "$output_var" input_var
    done
    echo $input_var
}
#input_fun 请输入你的姓名：
#fun(){
#    read -p "$1" name
#    if [ -z $name ];then
#        fun $1
#    else
#        echo $name
#    fi
#}
#fun 请输入你的姓名：
name=$(input_fun 请输入你的姓名：)
sex=$(input_fun 请输入你的性别：)
age=$(input_fun 请输入你的年龄：)
case $sex in
man)
    if [ $age -gt 18 -a $age -le 35 ];then
        echo "成年人"
    elif [ $age -gt 35 ];then
        echo "大大人"
    else 
        echo "小小孩"
    fi
    ;;
woman)
    echo "woman"
    ;;
*)
    echo "other"
    ;;
esac
