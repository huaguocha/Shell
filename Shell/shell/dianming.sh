#!/bin/bash
names=("何雨薇" "曾银" "陈新文"  "朱荣俊" "潘嘉凯" "罗运达" "朱思帆")
seed=$(date +%s)
index=$(($seed % ${#names[@]}))
echo "${names[$index]}"
