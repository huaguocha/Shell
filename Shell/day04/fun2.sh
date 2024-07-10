#!/bin/bash
#Funreturn(){
#    echo "这个函数是计算两个数字的和"
#    echo "请输入第一个数字"
#    read aNum
#    echo "请输入第二个数字"
#    read anthorNum
#    echo "这两个数字分别是${aNum}和${anthorNum} 。"
#    #echo $?
#    return $(($aNum+$anthorNum))
#}
#Funreturn
#echo "输入的两个数字和为 $? 。"
funreturn(){
    echo "计算两个数字之和"
    read -p "请输入第一个数字：" num1
    read -p "请输入第二个数字：" num2
    return $(($num1+num2)) 
}
funreturn
echo "两个数字之和为$?"
