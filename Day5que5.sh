#!/bin/bash  -x
read -p "Enter inch to count feet from in :" inc
ft=$(( $inc / 12))
echo "Feet : "$ft

read -p "Enter length in feet : " length
read -p "Enter Width in feet : " width
ar=$(( $length * $width ))
area=$(echo "$(($ar *(4 / 43)))" | bc  )
echo "Area in meter square :" $area

read -p "Enter total numbers of plots :" plot
areas=$(echo "$plot * $ar * 0.000023" |bc ))
echo "area in acres are " $areas
