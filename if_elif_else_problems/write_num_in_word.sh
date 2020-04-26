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

if [ $num -eq 1 ]
then 
	echo "One";
elif [ $num -eq 2 ]
then
	echo "Two";
elif [ $num -eq 3 ]
then
	echo "Three";
elif [ $num -eq 4 ]
then 
	echo "Four";
elif [ $num -eq 5 ]
then
	echo "Five";
elif [ $num -eq 6 ]
then 
	echo "Six";
elif [ $num -eq 7 ]
then
	echo "Seven";
elif [ $num -eq 8 ]
then
	echo "Eight";
elif [ $num -eq 9 ]
then
	echo "Nine";
else
	echo "Invalid";
fi

