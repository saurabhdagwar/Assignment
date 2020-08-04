#!/bin/bash -x
read -p "Enter nth term of harmonic Exprection : " n
harmonic=0;
for(( i=1;i<=$n;i++ ))
do
a=`echo 1 $n | awk '{print $1/$2}'`
harmonic=`echo $harmonic $a | awk '{print $1+$2}'`
done

echo "$harmonic"
