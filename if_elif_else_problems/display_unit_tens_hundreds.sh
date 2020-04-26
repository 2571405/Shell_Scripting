#!/bin/bash

read -p "Enter a number: " num
val=$num

while (( $val!=0 ))
do
        val=$(( $val/10 ))
        count=$(( $count+1 ))
done

echo "The number of digits are: " $count

i=1
j=1
var=$num
while (( $i!=($count+1) ))
do
        var=$(($num%10))
        num=$(( $num/10 ))
        i=$(( $i+1 ))
        echo $var ":" $j "Units"
        j=$(( $j*10 ))
done


