#!/bin/bash -x
isPresent=1
isAbsent=0
empWageperHour=20
isFulltime=8
empCheck=$((RANDOM%2))
if [[ empCheck -eq 1 ]]
then
	salary=$(($empWageperHour * $isFulltime))
	echo "Employee Daily wage" $salary
else
	echo "Employee Absent"
fi
