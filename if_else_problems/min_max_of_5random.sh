#!/bin/bash -x 

min=$(($RANDOM%1000))
max=$min
echo -e "Random number 1: " $min
for i in {2..5}
do
	ran=$(($RANDOM%1000))
	echo -e "Random number $i: " $ran
	min=$(( $ran<$min ? $ran : $min ))
	max=$(( $ran>$max ? $ran : $max ))
done
echo "The min value of 5 3-digit random numbers is: " $min
echo "The max value of 5 3-digit random numbers is: " $max

