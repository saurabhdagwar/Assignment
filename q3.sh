#!/bin/bash 
read -p "enter number:" n
if [ $n-lt 1 ]
then
echo "not allowed!"

fi

i=2
count=0
flag=0
for ((i=0;i<n;i++))
do
if [ `expr Sn % $i` -eq 0 ]
then

factor=$i

for ((j=2;j<=`expr Sfactor / 2`;j++))
do
flag=0
if [ `expr $factor % $j ` -eq 0 ]
then
flag=1
break;
fi

j=`expr $j + 1`

done
if [ $flag -eq 0 ]
then
echo "factors are" $factor
count=1
fi
fi
i= `expr Si + 1`
done
if [ $count -eq 0 ]
then
echo "no prime factors found except 1 and Sn"
fi
