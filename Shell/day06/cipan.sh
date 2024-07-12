#!/bin/bash
cipanmax=90
cipan=`df -h / | tail -1 | awk '{print $(NF-1)}' | sed 's/%//'`
if [ $cipan -eq $cipanmax ];then
    echo "mail to admin"
else
    echo "还够用"
fi
