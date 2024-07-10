#!/bin/bash
#file=/root/shell/day03/phonenum.txt
#for i in {1..3}
#do
#    filenum=`wc -l $file | cut -d ' ' -f1`
#    line=`echo $[$RANDOM%$filenum+1]`
#    luck=`head -n $line $file | tail -1`
#    echo "139****${luck:7:4}" && echo $luck >> /root/shell/day03/lucknum.txt
#done

file=/root/shell/day03/phonenum.txt
for i in {1..5}
do
    filenum=`wc -l $file | cut -d ' ' -f1`
    line=`echo $[$RANDOM%$filenum]`
    luck=`head -n $line $file | tail -1`
    echo "139****${luck:7:4}" && echo $luck >> /root/shell/day03/lucknum.txt
done
