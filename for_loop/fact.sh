#!/bin/bash

read -p "Enter a number" num
fact=1
for (( i=1;i<=$num;i=$(( $i+1 )) ))
do
	fact=$(( $fact*$i ))
done
echo "The factorial of $num is: "$fact
