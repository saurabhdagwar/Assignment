#!/bin/bash 
declare -A soln
read -p "Enter a :" a 
read -p "Enter b :" b 
read -p "Enter c :" c 
soln[a+b*c]=$(( $a + $b * $c ))
soln[a*b+c]=$(( $a * $b + $c ))
soln[c+a/b]=$(( $c + (( $a / $b )) ))
soln[a%b+c]=`echo $c $a $b | awk '{print $2%$3+$1}'`
echo "Content in dictionary : "${soln[@]}
echo "key values :" ${!soln[@]}

arr=( ${soln[a+b*c]} ${soln[a*b+c]} ${soln[c+a/b]} ${soln[a%b+c]} )

for((i=0;i<4;i++))
do
for((j=0;j<4-i-1;j++))
do
if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
then
temp=${arr[j]}
arr[j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
done
echo "Sort in Descending order : " ${arr[@]}
for((i=0;i<4;i++))
do
for((j=0;j<4-i-1;j++))
do
if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
then
temp=${arr[j]}
arr[j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
done
echo "Sort in Ascending order : " ${arr[@]}
