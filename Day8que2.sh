#!/bin/bash
declare -A month birth
a=0
for((i=0;i<50;i++))
	do
	random=$(( $RANDOM%12 +1 ))
	case $random in
		1)
			month[$i]="january"
			jan[a++]=$i
			;;
		2)
			month[$i]="february"
			feb[a++]=$i
			;;
		3)
			month[$i]="march"
			mar[a++]=$i
			;;
		4)
			month[$i]="april"
			apr[a++]=$i
			;;
		5)
			month[$i]="may"
			may[a++]=$i
			;;
		6)
			month[$i]="june"
			june[a++]=$i
			;;
		7)
			month[$i]="july"
			july[a++]=$i
			;;
		8)
			month[$i]="august"
			aug[a++]=$i
			;;
		9)
			month[$i]="september"
			sept[a++]=$i
			;;
		10)
			month[$i]="octomber"
			oct[a++]=$i
			;;
		11)
			month[$i]="november"
			nov[a++]=$i
			;;
		12)
			month[$i]="december"
			dec[a++]=$i
			;;

	esac
done
echo ${month[@]}
echo ${!month[@]}

	echo "birth january " ${jan[@]}
	echo "birth february " ${feb[@]}
	echo "birth march " ${mar[@]}
	echo "birth april " ${apr[@]}
	echo "birth may " ${may[@]}
	echo "birth june " ${june[@]}
	echo "birth july " ${july[@]}
	echo "birth august " ${aug[@]}
	echo "birth september " ${sept[@]}
	echo "birth octomber " ${oct[@]}
	echo "birth november " ${nov[@]}
	echo "birth december " ${dec[@]}
