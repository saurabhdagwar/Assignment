#!/bin/bash -x
echo "Enter number " 
echo "1. Feet to Inch"
echo   "2. Inch to feet " 
echo "3. Feet into Meter" 
echo "4. Meter into feet "
read a;

read -p "Enter term :" num
case $a in
1)
Inch=$(expr $num / 12 )
echo $Inch ;;
2)
feet=$(expr $num * 12 )
echo $feet ;;
3)
meter=$(expr $num * 0.3 )
echo $meter ;;
4)
fet=$(expr $num / 0.3 )
echo $fet ;;

*)
echo "Enter valid number : " ;;

esac
