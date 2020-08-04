#!/bin/bash
i=0
while((i!=10))
    do
        arr[((i++))]=$(( $RANDOM%1000))
    done
echo "Array Before Sorting : " ${arr[@]} 
  
for ((i = 0; i<10; i++)) 
do
      
    for((j = 0; j<10-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
  
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array after Sorting : "${arr[@]}
echo "Second Smallest number is : " ${arr[1]}
echo "Second Largest number is : " ${arr[9]}
