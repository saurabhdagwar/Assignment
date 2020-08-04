#!/bin/bash
i=0
while((i!=10))
	do
		a[((i++))]=$(( $RANDOM%1000))
	done
	min=${a[0]}
	max=${a[0]}
	second_min=${a[0]}
	second_max=${a[0]}
for((i=0;i<10;i++))
	do
		if [[ ${a[$i]} -lt $min ]]
		then 
			min=${a[$i]}
		fi
		if [[ ${a[$i]} -gt $max ]]
		then 
			max=${a[$i]}
		fi
done
	echo "Array Elements :" "${a[@]}"

for((i=0;i<10;i++))
	do
		if [[ ${a[$i]} -lt $second_min && ${a[$i]} != $min  ]]
		then
			second_min=${a[$i]}
		fi
		if [[ ${a[$i]} -gt $second_max && ${a[$i]} != $max ]]
		then 
			second_max=${a[$i]}
		fi
done
echo "Second Smallest Number : " $second_min
echo "Second Largest Number : "$second_max
