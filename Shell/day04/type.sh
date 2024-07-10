#!/bin/bash
read -p "请输入你的文件路径：" file
type=`ls -ld $file | cut -c1`
case $type in
-)
    echo "普通文件"
    ;;
d)
    echo "目录"
    ;;
l)
    echo "链接文件"
    ;;
*)
    echo "其他文件"
    ;;
esac
