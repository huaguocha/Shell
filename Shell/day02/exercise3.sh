#!/bin/bash

# 统计删除的文件个数
count=0

# 循环遍历目录内的所有文件
for file in /test/exam/*; do
    # 检查文件是否为空
    if [ ! -s "$file" ]; then
        # 删除空文件
        rm "$file"
        ((count++))
    fi
done

echo "删除了 $count 个空文件"
