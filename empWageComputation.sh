#!/bin/bash -x
isPartTime=1
isFullTime=2
empWageperHour=20
maxworkDays=20
maxworkHours=100
totalWorkingHours=0
totalWorkingDays=0
function getWorkHours()
{
	local $empCheck=$1
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
	echo $empHours
}
function getEmpWage()
{
	local empHours=$1
	echo $(($empHours*$empWageperHour))
}
while [[ $totalWorkingHours -lt $maxworkHours && $totalWorkingDays -lt $maxworkDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHours="$(getWorkHours $empCheck)"
	totalWorkingHours=$(($totalWorkingHours+$empHours))
	dailyWage[$totalWorkingDays]="$(getEmpWage $empHours)"
done
salary=$(($empWageperHour * $totalWorkingHours))
echo "Employee Monthly wage using function for working hours " $salary
echo ${dailyWage[@]}
