#!/bin/bash 

read -p "Enter n: " n

i=1
while (( i<=$n ))
do
	var=`echo $i | awk '{t=2^$1} {print t}'`

	if (( $var<=256 ))
	then
		echo "2^"$i": "$var
	else
		exit
	fi

	i=$(( $i+1 ))
done

