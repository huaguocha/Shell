#!/bin/bash
run=/tmp/run
test -d $run
if [ $? -eq 0 ];then
	echo "${run}存在"
	rm -rf $run/*
else 
	echo "${run}不存在"
	mkdir $run
fi 
