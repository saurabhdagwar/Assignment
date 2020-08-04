#!/bin/bash 
FtoC()
{
degC=`echo $@  | awk '{print($1-32)*(5/9)}'`
echo "$@ degF = $degC degC"
}
CtoF()
{
degF=`echo $@  | awk '{print($1*(9/5)+32)}'`
echo "$@ degC = $degF degF"

}


#Main Shell
read -p "Enter 1. for decF to degC and 2. degC to degF " a
case $a in
1)
read -p "Enter degF : " F
FtoC $F
;;
2)
read -p "Enter degC : " C
CtoF $C
;;
esac
