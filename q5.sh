#!/bin/bash 
for((i=0;i<100;i++))
	do
		a=$(($i/10))
		b=`echo $i | awk '{print $1%10}'`
		if [[ $a == $b ]]
			then
			arr[i]=$i;
		fi
	done

echo ${arr[@]}
