#!/bin/bash 

read -p "Enter value:" value
read -p "Enter unit: " unit1
case $unit1 in
	"feet")
		read -p "Enter the desired unit: " unit2

		case $unit2 in
			"inch")
				inch=`echo $value | awk '{t=$1*12} {print t}'`
				echo "$value ft is $inch inches"
				;;
			"meter")
				meter=`echo $value | awk '{t=$1/3.28} {print t}'`
				echo "$value ft is $meter meters"
				;;
				*)
				echo "Invalid unit"; exit
				;;
		esac
		;;

	"inch")
		feet=`echo $value | awk '{t=$1/12} {print t}'`
		echo "$value inch is $feet ft"
		;;
	"meter")
		feet=`echo $value | awk '{t=$1*3.18} {print t}'`
		echo "$value meter is $feet ft"
		;;
		*)
		echo "Invalid unit"; exit
		;;
esac
