#!/bin/bash

function convert() {

case $2 in
	celcius)
		if (( $1<0 || $1>100 ))
		then
			echo "$1 $2 is not between freezing point and boiling point of water!"
		exit
		else
			far=`echo $1 | awk '{t=($1*(9/5))+32} {print t}'`
         echo "$1 degC is $far degF"
		fi
		;;
	farenhiet)
		if (( $1<32 || $1>212 ))
		then
			echo "$1 $2 is not within freezing point and boiling point of water!"
			exit
		else
			cel=`echo $1 | awk '{t=($1-32)*(5/9)} {print t}'`
         echo "$1 degF is $cel degC"
		fi
		;;
	*)
	echo "Invalid unit!"
		;;
esac

}

read -p "Enter a value: " val
read -p "Enter unit: " unit

result=$( convert $val $unit )
echo $result
