#!/bin/bash

read -p "Enter a number" num
for (( i=1;i<=$(( $num-1 ));i=$i+1 ))
do
	var+=1/$i"+"
done
printf "The harmonic series is: "
printf $var
echo "1/$num"
