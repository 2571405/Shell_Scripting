#!/bin/bash

read -p "Enter a number: " num

val=$num

if (( $num==1 ))
then
	echo "No prime factors!"
	exit
fi

echo "The prime factors of $val are: "
for (( i=2;i<=$(($val));i=$(( $i+1 )) ))
do
	while (( $num%$i==0 ))
	do
		echo $i
		num=$(( $num/$i ))
	done
done






