#!/bin/bash
grep -E '^#|^$' /etc/rc.d/rc.local | wc -l
grep -E '^#|^$' /etc/rc.d/init.d/functions | wc -l
grep -E '^#|^$' /etc/inittab | wc -l
#分别统计/etc/rc.d/rc.local、/etc/rc.d/init.d/functions和/etc/inittab文件中以#开头的行的行数和空白行数 
