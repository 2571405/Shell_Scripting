#!/bin/bash

echo "Employee Wage Computation"
attend=$(( $RANDOM%2 ))
if (( $attend==0 ))
then
	echo "Employee Absent"
else
	echo "Employee Present"
fi
