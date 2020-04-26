#!/bin/bash

wagePrHr=20
FullDayHr=8
HalfDayHr=4
echo "Employee Wage Computation"
attend=$(( $RANDOM%3 ))
if (( $attend==0 ))
then
	echo "Employee Absent"
	salary=0
elif (( $attend==1 ))
then
	echo "Employee Par time"
	salary=$(( $wagePrHr*$HalfDayHr ))
else
	echo "Employee Full time"
	salary=$(( $wagePrHr*$FullDayHr ))
fi
echo $salary
