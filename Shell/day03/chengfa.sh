#!/bin/bash
for ((i=1;i<=9;i++))
do
    for ((j=1;j<=i;j++))
    do
        let a=$i*$j
        echo -n "$j*$i=$a "
    done
echo
done
