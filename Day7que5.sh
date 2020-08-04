#!/bin/bash
t=0;
for((i=0;i<100;i++))
do
	if [[ `echo $i | awk '{print $1 % 11}'` == 0 ]]
	then
	arr[t++]=$i;
	fi
done
echo ${arr[@]}
