#!/bin/bash 

read -p "Enter Date :" date
read -p "Emter Month :" month

if [[ $month -eq "march" &&  $date -gt 20 && $date -lt 31 ]]
	then echo "True"
elif [[ $month -eq "april" &&  $date -lt 30 ]]
	then echo "True"
elif [[ $month -eq "may" &&  $date -lt 31 ]]
	then echo "True"
elif [[ $month -eq "june" &&  $date -lt 20 ]]
	then echo "True"

else
	echo "False"

fi
