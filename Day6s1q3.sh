#!/bin/bash 
read -p "Enter number to check : " n
m=$(( $n / 2 ))
count=0
for(( i=2;i<=$m;i++ ))
do
if [ `echo $n $i | awk '{print $1%$2}'` == 0 ]
then 
echo "It is not a prime number "
count=1
 break;
fi
done
if [ $count -eq 0 ]
then
echo "It is a prime number "
fi
