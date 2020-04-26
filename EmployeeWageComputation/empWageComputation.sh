#!/bin/bash

wagePrHr=20
FullDayHr=8
echo "Employee Wage Computation"
attend=$(( $RANDOM%2 ))
if (( $attend==0 ))
then
	echo "Employee Absent"
	salary=0
else
	echo "Employee Present"
	salary=$(( $wagePrHr*$FullDayHr ))
fi
echo $salary
