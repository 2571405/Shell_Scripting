#!/bin/bash

echo "Employee Wage Computation"
salary=0
days=1
over=0
while (( $over==0 ))
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
	days=$(( $days+1 ))
	Working_hrs=$(( $Working_hrs+$DayPrHr ))
	salary=$(( $salary+($wagePrHr*$DayPrHr) ))
	if (( $days==20 || $Working_hrs==100 ))
	then
		over=1
	fi
done
echo "Monthly Salary is: " $salary
