#!/bin/bash
yuandan=`date -d "2025-01-01 00:00:00" +%s`
now=`date +%s`
let diff=$yuandan-$now

days=$(($diff / 86400))
hours=$(( ($diff % 86400) / 3600 ))
mins=$(( ($diff % 3600) / 60 ))
secs=$(($diff % 60))
echo "离2025年1月1日凌晨0点还有："
echo "$days 天，$hours 小时，$mins 分钟，$secs 秒"
