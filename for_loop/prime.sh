#!/bin/bash 

read -p "Enter a number: " num
for (( i=2;i<=$(( $num-1 ));i=$(( $i+1 )) ))
do
	if (( ($num%$i)==0 ))
	then
		var1=$i
	else
		var2=$i
	fi
done

if (( $num==1 ))
then
	echo "1 is neither prime nor composite!"
elif (( $var1 ))
then
	echo "$num is not a prime number!"
	var1=0
else
	echo "$num is a prime number!"
	var2=0
fi
