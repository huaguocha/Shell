#!/bin/bash
vsz=`ps aux | awk 'NR>1' | awk -F ' ' '{sum[$5]++};END{for (i in sum){print suma+=i}}' | tail -1`
rss=`ps aux | awk 'NR>1' | awk -F ' ' '{sum[$6]++};END{for (i in sum){print suma+=i}}' | tail -1`
echo "该 process 使用掉的虚拟内存量为：${vsz}kb"
echo "该 process 占用的固定的内存量为：${rss}kb"
