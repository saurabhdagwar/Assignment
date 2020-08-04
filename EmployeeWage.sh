#!/bin/bash
part_time=1
full_time=1
max_hr_in_month=30
emp_rate=20
no_working_days=30

declare -A record;

#variables
totalEmphr=0;
totalWorkingDays=0;

function getWorkHrs(){
local empCheck=$1
case $empCheck in
  $full_time)
      empHrs=8
         ;;
  $part_time)
       empHrs=4
   ;;
  *)
    empHrs=0
;;
esac
echo $empHrs
}


while [[ $totalEmpHrs -lt $max_hr_in_month && $totalWorkingDays -lt $no_working_days ]]
do
((totalWorkingDays++))
empCheck=$(($RANDOM%3));
empHrs=$( getWorkHrs $empCheck )
totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
record["Day "$totalWorkingDays]=$(( $empHrs*$emp_rate ))
done

totalSalary=$(($totalEmpHrs*$emp_rate))
echo ${record[@]}
echo ${!record[@]}


 
