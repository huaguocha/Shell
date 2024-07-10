#!/bin/bash
name=`cut -d ':' -f1 /tmp/passwd.bak20240627`

for i in $name ;do
    a=`id -u $i`
       if [ $a -lt 100 ];then
	    echo $i
       fi
done
