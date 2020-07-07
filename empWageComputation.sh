#!/bin/bash -x
isPartTime=1
isFullTime=2
empWageperHour=20
workdays=20
for((i=1;i<=$workdays;i++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
		empHours=8
		;;
		$isPartTime)
		empHours=4
		;;
		*)
		empHours=0
		;;
	esac
	totalempHrs=$(($totalempHrs+$empHours))
done
salary=$(($empWageperHour * $totalempHrs))
echo "Employee Monthly wage" $salary
