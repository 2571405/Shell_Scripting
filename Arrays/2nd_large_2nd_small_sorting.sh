#!/bin/bash

read -p "Enter number of elements you want in the array: " range
n=$(( $range-1 ))

for (( i=0;i<=$n;i=$i+1 ))
do
	random=$(( $RANDOM%100 ))
	arr[$i]=$random
done
echo "The array is: "${arr[@]}

over=0
while (( over!=$n ))
do
	for (( j=0;j<=$(( $n-1 ));j=$(( $j+1 )) ))
	do
		if (( ${arr[$j]}>=${arr[$j+1]} ))
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$j+1]}
			arr[$j+1]=$temp
		fi
	done
over=$(( $over+1 ))
done

echo "The sorted array is: "${arr[@]}

a=$(( $n-1 ))
echo "2nd minimum value is: " ${arr[1]}
echo "2nd maximum value is: " ${arr[$a]}



