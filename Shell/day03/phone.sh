#!/bin/bash
count=0
while true
do
    n1=$[$RANDOM%10]
    n2=$[$RANDOM%10]
    n3=$[$RANDOM%10]
    n4=$[$RANDOM%10]
    n5=$[$RANDOM%10]
    n6=$[$RANDOM%10]
    n7=$[$RANDOM%10]
    n8=$[$RANDOM%10]
    #echo "139$n1$n2$n3$n4$n5$n6$n7$n8" | tee -a phonenum.txt && let count++
    echo "139$n1$n2$n3$n4$n5$n6$n7$n8" >> phonenum.txt && let count++
    if [ $count -eq 10 ];then
        break
    fi
done
