#!/bin/bash
#a=$[$RANDOM%3+1]
#b=$[$RANDOM%3+1]
#if [ $a -eq 1 ];then
#    echo "a出的是石头。"
#elif [ $a -eq 2 ];then
#    echo "a出的是剪刀。"
#elif [ $a -eq 3 ];then
#    echo "a出的是布。"
#fi
#
#if [ $b -eq 1 ];then
#    echo "b出的是石头。"
#elif [ $b -eq 2 ];then
#    echo "b出的是剪刀。"
#elif [ $b -eq 3 ];then
#    echo "b出的是布。"
#fi
#
#if [ $a -eq $b ];then
#    echo "这局平局。"
#elif [ $a -eq 1 ] && [ $b -eq 2 ];then
#    echo "这局a赢了。"
#elif [ $a -eq 1 ] && [ $b -eq 3 ];then
#    echo "这局b赢了。"
#elif [ $a -eq 2 ] && [ $b -eq 1 ];then
#    echo "这局b赢了。"
#elif [ $a -eq 2 ] && [ $b -eq 3 ];then
#    echo "这局a赢了。"
#elif [ $a -eq 3 ] && [ $b -eq 1 ];then
#    echo "这局a赢了。"
#elif [ $a -eq 3 ] && [ $b -eq 2 ];then
#    echo "这局b赢了。"
#else
#    echo "这局无效。"
#fi
read -p "请输入你的选项：1，石头；2，剪刀；3，布：" a
b=$[$RANDOM%3+1] #1:石头；2：剪刀；3：布
if [ $a -eq $b ];then
    echo "平局"
    elif [ $a -eq 1 ] && [ $b -eq 2 ];then
        echo "你出的是石头，对方出剪刀，你赢了。"
    elif [ $a -eq 1 ] && [ $b -eq 3 ];then
        echo "你出的是石头，对方出布，对方赢了。"
    elif [ $a -eq 2 ] && [ $b -eq 1 ];then
        echo "你出的是剪刀，对方出石头，对方赢了。"
    elif [ $a -eq 2 ] && [ $b -eq 3 ];then
        echo "你出的是剪刀，对方出布，你赢了。"
    elif [ $a -eq 3 ] && [ $b -eq 1 ];then
        echo "你出的是布，对方出石头，你赢了。"
    elif [ $a -eq 3 ] && [ $b -eq 2 ];then
        echo "你出的是布，对方出剪刀，对方赢了。"
else
    echo "输出无效。"
fi
