#!/bin/bash
#grep -E '^#|^$' /etc/rc.d/rc.local | wc -l
#grep -E '^#|^$' /etc/rc.d/init.d/functions | wc -l
#grep -E '^#|^$' /etc/inittab | wc -l
#分别统计/etc/rc.d/rc.local、/etc/rc.d/init.d/functions和/etc/inittab文件中以#开头的行的行数和空白行数 
read -p "请输入你要统计的文件路径：" file
test -e $file
if [ $? -eq 0 ];then
    echo "$file 存在"
    grep -E '^#|^$' $file | wc -l
else
    echo "不存在"
fi
