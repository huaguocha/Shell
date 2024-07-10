#!/bin/bash
if [ -e "/home/test.sh" ];then
    echo "家目录中的test.sh文件存在"
    if [ -x "/home/test.sh" ];then
        echo "test.sh具有执行权限"
    else 
        echo "test.sh不具有执行权限"
    fi
else
    echo "家目录test.sh文件不存在"
fi
