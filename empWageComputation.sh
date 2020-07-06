#!/bin/bash -x
isPartTime=1
isFullTime=2
empWageperHour=20
empCheck=$((RANDOM%3))
if [[ $isFullTime -eq $empCheck ]]
then
	empHours=8
elif [[ $isPartTime -eq $empCheck ]]
then
	empHours=4
else
	empHours=0
fi
salary=$(($empWageperHour * $empHours))
echo "Employee Daily wage" $salary
