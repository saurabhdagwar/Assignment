#!/bin/bash -x
date=$(date +%d%m%y)
for file in `ls *.log.1`
do
name=`echo $file | awk -F . '{print $1}'`;
ext=`echo $file |awk -F . '{print $2}'`;
mv "$file" "$name""$date"".""$ext";
done
