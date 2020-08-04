#!/bin/bash -x
n1=$(( RANDOM %100))
n2=$(( RANDOM %100))
n3=$(( RANDOM %100))
n4=$(( RANDOM %100))
n5=$(( RANDOM %100))
sum=$(( $n1 + $n2 + $n3 + $n4 + $n5 ))
Avg=$(( $sum /5))
echo -n  "Sum =" $sum "Average =" $Avg
