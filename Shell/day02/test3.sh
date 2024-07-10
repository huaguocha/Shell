#!/bin/bash
sum=0
for i in {1..100..2}
do
    let sum+=i #sum=sum+i
    #echo "i的值"$i
    #echo "sum的值"$sum
done
    echo "sum的值"$sum
