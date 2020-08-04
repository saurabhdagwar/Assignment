#!/bin/bash
t=0;
read -p "Enter a number to finds its prime factor : " a
for((i=2;i<=$a;i++))
	do
	if [[ `echo $a $i | awk '{print $1%$2}'` == 0 ]]
		then
		isprime=1;
		for(( j=2; j<$(($i/2)) ; j++ ))
			do
			if [[ `echo $i $j | awk '{print $1%$2}'` == 0 ]]
				then
				isprime=0;
				break ;
			fi
			done
	
		if [[ $isprime == 1 ]]
			then 
			 arr[t++]=$i;
		fi
	fi
done
	echo ${arr[@]}
