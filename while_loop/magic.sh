#!/bin/bash
start=1
end=100
over=1
echo "Think of any number between 1 to 100!"
while (( $over!=0  ))
do
	n=$(( ($end-$start)/2 ))

	middle=$(( $start+$n ))

	echo ""
	read -p "Is the number greater than $middle? Press y for 'YES', n for 'NO': " ans

	if (( $middle==100 && $ans=='y' ))
	then
		echo "Number cannot be greater than 100! Please try again!"
		exit
	fi

	if (( $ans=='y' ))
	then
		start=$middle
		end=$end
		over=1
	elif (( $ans=='n' ))
	then
		end=$middle
		start=$start
		over=1
	else
		echo "Please enter correct input!"
		exit
	fi

	if (( ($end-$start)==1 ))
	then
		read -p "Is your number $start? " ans1
		if (( $ans1=='y' ))
		then
			echo "Number found!"
			exit
		elif (( $ans1=='n' ))
		then
			echo "Your number is $end!"
			exit
		else
			echo "incorrect input!"
			exit
		fi
	fi

done
