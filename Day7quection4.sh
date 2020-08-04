#!/bin/bash
echo "Enter 10 number for operation : "
m=0;
while((i!=11))
do
read -p "$i : " a[$i]; 
((i++))
done
echo ${a[$@]}

for((i=0;i<11;i++))
{
	for((j=i+1;j<11-1;j++))
	{
		for((k=j+1;k<11-1;k++))
		{
		if [[ $(( ${a[$i]} +${a[$j]} + ${a[$k]} )) == 0 ]]
		then
		ans[m++]= "((${a[$i]} ${a[$j]} ${a[$k]}))" ;
		fi
		}
	}

}
echo ${ans[$@]}
