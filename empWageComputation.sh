#!/bin/bash -x
isPartTime=1
isFullTime=2
empWageperHour=20
maxworkDays=20
maxworkHours=100
totalWorkingHours=0
totalWorkingDays=0
while [[ $totalWorkingHours -lt $maxworkHours && $totalWorkingDays -lt $maxworkDays ]]
do
	((totalWorkingDays++))
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
	totalWorkingHours=$(($totalWorkingHours+$empHours))
done
salary=$(($empWageperHour * $totalWorkingHours))
echo "Employee Monthly wage based on Max working hours" $salary
