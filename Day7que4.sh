#!/bin/bash
counter=0;
t=0;
for((i=0;i<=100;i++))
	do
		a=$(( $RANDOM%5 ))
		arr[i]=$a;

		b=$(( $RANDOM%5 ))

		op2=$(( $RANDOM%2 ))
      if [[ $op2 == 1 ]]
      then
      arr[i]=`echo ${arr[i]} $b | awk '{print $1+$2}'`
		t="+"
      else
      arr[i]=`echo ${arr[i]} $b | awk '{print $1-$2}'`
		t="-"
      fi
		c=$(( $RANDOM%5 ))
		op3=$(( $RANDOM%2 ))
		if [[ $op3 == 1 ]]
		then 
		arr[i]=`echo ${arr[i]} $c | awk '{print $1+$2}' `
		r="+"
		else
		arr[i]=`echo ${arr[i]} $c | awk '{print $1-$2}'`
		r="-"
		fi
		if [[ ${arr[i]} == 0 ]]
		then
		echo $a"$t"$b"$r"$c
		fi
done
