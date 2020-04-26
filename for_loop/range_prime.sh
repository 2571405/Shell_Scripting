#!/bin/bash

read -p "How many numbers you want to check? " count
for (( i=1;i<=$count;i=$(( $i+1 )) ))
do
	read -p "Enter a number to check: " num
	for (( j=2;j<=$(( $num-1 ));j=$(( $j+1 )) ))
	do
		if (( $num%$j==0 ))
		then
			var1=$j
		else
			var2=$j
		fi
	done

if (( $num==1 ))
then
	echo "1 is neither a prime nor a composite number!"
elif (( $var1 ))
then
	echo "$num is not prime number!"
	var1=0
else
	echo "$num is a prime number!"
	var2=0
fi

done
