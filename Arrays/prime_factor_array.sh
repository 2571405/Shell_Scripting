#!/bin/bash

read -p "Enter a number: " num

val=$num

if (( $num==1 ))
then
   echo "No prime factors!"
   exit
fi

for (( i=2;i<=$(($val));i=$(( $i+1 )) ))
do
   while (( $num%$i==0 ))
   do
		over=1
		while (( over==1 ))
		do
			arr[$j]=$i
			j=$(( $j+1 ))
			over=0
		done

      num=$(( $num/$i ))
   done
done

echo "The array of the prime factors of $num is: " ${arr[@]}
