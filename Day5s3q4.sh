#!/bin/bash 
read -p "A = " a
read -p "B = " b
read -p "C = " c

d=$(( $a + ($b*$c )))
echo "a + b * c :"$d
e=$(( $a + ($a/$b )))
echo " c + a /b : "$e
f=$((($a % $b) + $c ))
echo "a % b + d : "$f
g=$((( $a * $b) + $c ))
echo " a * b + c : "$g
n=($d $e $f $g);
min="$d";
max="$d";

for i in "${n[@]}"
do
if [[ "$i" -lt "$min" ]]
then
min="$i" ;
fi
done
for i in "${n[@]}"
do
if [[ "$i" -gt "$max" ]]
then
max="$i" ;
fi
done

echo  "maximum :" $max ;
echo  "minimum = "$min
