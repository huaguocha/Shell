#!/bin/bash
read -p "please input your grade：" grade
if [ $grade -ge 95 ] && [ $grade -le 100 ];then
    echo "优秀"
elif [ $grade -ge 80 ] && [ $grade -le 94 ];then
    echo "还不错"
elif [ $grade -ge 60 ] && [ $grade -le 79 ];then
    echo "加油"
elif [ $grade -lt 60 ];then
    echo "重新学习"
else
    echo "成绩有误，无法判断"
fi
