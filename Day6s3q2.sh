#!/bin/bash 

ispalindrome()
{
orig=$@
n=$@
num=0
while(( $n >= 1 ))
do
rem=`echo $n | awk '{print $1%10}'`
num=$(( ($num * 10) + $rem  ))
n=`expr $n / 10 `
done

if [[ $orig == $num ]]
then
	echo " $orig is a Palindrome number "
else 
	echo "$orig is not a Palindrome number "
fi

}

#main Script started from here

ispalindrome 55

ispalindrome 72

ispalindrome 505

ispalindrome 5724

