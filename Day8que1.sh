#!/bin/bash
declare -A dict
count=0
while(( $count != 10 ))
do
random=$(( $RANDOM%6 + 1 ))
dict[$random]=$((${dict[$random]} + 1 ))
count=${dict[$random]};
done
echo ${!dict[@]}
echo ${dict[@]}

max=${dict[1]}
min=${dict[1]}
for((i=1;i<7;i++))
do
if [[ ${dict[$i]} -lt $min ]]
then
min=${dict[$i]} 
a=$i;
fi
if [[ ${dict[$i]} -gt $max ]]
then
max=${dict[$i]} 
b=$i;
fi
done
echo "Maximum number of counts are " $a " = " $max "times "; 

echo "Minimum number of counts are " $b " = " $min "times "; 
