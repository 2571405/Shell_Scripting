#!/bin/bash

echo "Employee Wage Computation"

function get_work_hrs() {
type=$1
hour=$2
if (( $type==0 ))
then
	total_working_hrs=$(( $hour+0 ))
	echo $total_working_hrs
elif (( $type==1 ))
then
   total_working_hrs=$(( $hour+4 ))
   echo $total_working_hrs
elif (( $type==2 ))
then
   total_working_hrs=$(( $hour+8 ))
   echo $total_working_hrs
fi
}

salary=0
days=1
over=0
Working_hrs=0
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
	Working_hrs=$(get_work_hrs $attend $Working_hrs)
	salary=$(( $salary+($wagePrHr*$DayPrHr) ))
	if (( $days==20 || $Working_hrs==100 ))
	then
		if (( $days==20 ))
		then
			echo "20 days over"
			over=1
		else
			echo "100 hours over"
			over=1
		fi
	fi
done
echo "Monthly Salary is: " $salary
