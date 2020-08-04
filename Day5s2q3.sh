#!/bin/bash
read -p "Enter year to check " year
if [ $((year % 400)) -eq 0 ];
then echo "It is a leap year";
elif [ $(( year % 100)) -eq 0 ];
then echo "It is not a leap year";
elif [ $(( year % 4)) -eq 0 ];
then echo "It is a leap year";
else
echo "It is not leap year";
fi
