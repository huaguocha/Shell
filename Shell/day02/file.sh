#!/bin/bash
#find=`find /test/exam/* -type f  -empty | wc -l`
#echo $find
#rm=`find /test/exam/* -type f -empty -exec rm -rf {} \; | wc -l`
#echo $rm
sum=0
for i in `ls /test/exam/`
do
    [ ! -s /test/exam/$i ]
    if [ $? -eq 0 ];then
        rm -rf /test/exam/$i
        let sum=sum+1
    fi
done
echo "共有$sum 已经被删除"
