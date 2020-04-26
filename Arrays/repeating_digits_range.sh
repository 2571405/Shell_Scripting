#!/bin/bash -x

read -p "Enter starting value of the range: " start
read -p "Enter ending value of the range: " end

i=$start
j=0
while (( $i<=$end ))
do
	if (( $i%11==0 ))
	then
		echo $i
		over=1
		while (( over!=0 ))
		do
			arr[$j]=$i
			j=$(( $j+1 ))
			over=0
		done
		i=$(( $i+1 ))
	else
		i=$(( $i+1 ))
	fi
done

echo "The array is: "${arr[@]}
