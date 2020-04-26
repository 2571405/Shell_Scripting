#!/bin/bash

read -p "Enter a single digit number: " num
val=$num
while (( $val!=0 ))
do
        val=$(( $val/10 ))
        count=$(( $count+1 ))
done

if(( $count>1 ))
then
        echo "Cannot enter $count digit. Please enter single digit number!"; exit;
fi

case $num in
	1)
	echo "One"
	;;
	2)
        echo "Two"
	;;
	3)
        echo "Three"
	;;
	4)
        echo "Four"
	;;
	5)
        echo "Five"
	;;
	6)
        echo "Six"
	;;
	7)
        echo "Seven"
	;;
	8)
        echo "Eight"
	;;
	9)
        echo "Nine"
	;;
	*)
        echo "Invalid input"
	;;
esac
