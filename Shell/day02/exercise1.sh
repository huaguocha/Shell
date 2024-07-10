#!/bin/bash
read -p "输入考试成绩范围1~100分：" fs
if [ $fs -ge 0 -a $fs -le 100 ]
then
    if [ $fs -ge 95 -a $fs -le 100 ]
    then
         echo "优秀"
    elif [ $fs -ge 80 -a $fs -le 94 ]
    then
         echo "还不错！ "
    elif [ $fs -ge 60 -a $fs -le 79 ]
    then
         echo "加油"
    else
         echo "重新学习！"
    fi
else
    echo "成绩有误，无法判断！"
fi
