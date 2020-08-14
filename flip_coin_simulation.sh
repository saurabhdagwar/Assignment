#!/bin/bash
headcount=0
tailcount=0
while(( $headcount != 21 && $tailcount != 21 ))
do
coin=$(( $RANDOM%2 ))
if [[ $coin == 1 ]]
then
echo -n "Head"
((headcount++))
else
echo -n "Tail"
((tailcount++))
fi
done
echo ""
echo "Total number of heads = " $headcount 
echo "Total number of tails = " $tailcount 
if [[ $headcount > $tailcount ]]
then 
echo "Head Won"
elif [[ $headcount = $tailcount ]]
then 
echo "Tie"
else 
echo "Tail Won"
fi
