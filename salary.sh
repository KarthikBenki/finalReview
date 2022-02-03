#!/bin/bash -x
declare -a salary

isFulltime=1
isParttime=2
totalWorkingdays=0
numWorkingdays=20
EMP_RATE_PER_HR=20

function empWrkHrsFun()
{
	empCheck=$1
	case $empCheck in
		$isFulltime)
			empWrkHrs=8
			;;
		$isParttime)
			empWrkHrs=4
			;;
				  *)
			empWrkHrs=0
			;;
	esac
	echo $empWrkHrs
	
}

while ((totalWorkingdays<numWorkingdays))
do
	
	empCheck=$((RANDOM%3))
	empWrkHrs=$(empWrkHrsFun $empCheck)
	salary=$(($EMP_RATE_PER_HR*$empWrkHrs))
	salary[totalWorkingdays]=$salary
	totalSalary=$(($totalSalary+$salary))
	((totalWorkingdays++))
done
echo day by day salary is ${salary[@]}
echo day by day salary is ${!salary[@]}
echo total salary is $totalSalary
			
