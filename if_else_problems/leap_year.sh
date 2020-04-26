#!/bin/bash  

read -p "Enter year: " years
if (( $years%4 ))
	then
		echo "Not a leap year!";
	else
		echo "Leap year!";
fi
