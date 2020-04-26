#!/bin/bash

echo "Employee Wage Computation"
salary=0
for (( i=1;i<=20;i=$i+1 ))
do
	attend=$(( $RANDOM%3 ))
	case $attend in
	0)
		echo "Employee Absent"
		wagePrHr=0
		DayPrHr=0
		;;
	1)
		echo "Employee Part time"
		wagePrHr=20
		DayPrHr=4
		;;
	2)
		echo "Employee Full time"
		wagePrHr=20
		DayPrHr=8
		;;
	esac
	salary=$(( $salary+($wagePrHr*$DayPrHr) ))
done
echo "Salary is: " $salary
