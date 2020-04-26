#!/bin/bash 

read -p "Enter the power: " num
for (( i=1;i<=$num;i=$i+1 ))
do
	result=`echo $i | awk '{t=2^$1} {print t}'`
	echo "2^"$i": "$result
done
