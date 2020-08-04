#!/bin/bash
i=0
while((i!=10))
	do
		a[((i++))]=$(( $RANDOM%1000))
	done

	echo "Array before Elements :" "${a[@]}"

for((i=0;i<10;i++))
	do
	for((j=0;j<10-i-1;j++))
		do
			if [[ ${a[j]} -gt ${a[$((j+1))]} ]]
			then
				#swaping 
				temp=${a[j]};
				a[$j]=${a[$((j+1))]};
				a[$((j+1))]=$temp;
			fi
		done
done
	echo "Array after Elements :" "${a[@]}"
echo "Second Smallest number is : " ${a[1]}
echo "Second Largest number is : " ${a[9]}
