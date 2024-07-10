#!/bin/bash

# 目标日期
target=$(date -d "2025-01-01 00:00:00" +%s)

while true; do
    # 当前日期
    now=$(date +%s)

    # 计算差值
    diff=$((target - now))
    echo $diff
    # 判断是否已经过了目标日期
    if [ $diff -le 0 ]; then
        echo "2025年1月1日已经到达！"
        break
    fi

    # 计算天、时、分、秒
    days=$((diff / 86400))
    hours=$(( (diff % 86400) / 3600 ))
    minutes=$(( (diff % 3600) / 60 ))
    seconds=$((diff % 60))

    # 清屏并显示倒计时
    clear
    echo "距离2025年1月1日还有：$days 天 $hours 小时 $minutes 分钟 $seconds 秒"

    # 每秒更新一次
#    sleep 1
done
