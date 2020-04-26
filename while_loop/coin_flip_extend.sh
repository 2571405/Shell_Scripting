#!/bin/bash

over=1
c1=0
c2=0
while (( $over!=0 ))
do
	toss=$(( $RANDOM%2 ))

	if (( $toss ))
	then
		echo "Heads"
		c1=$(( $c1+1 ))
	else
		echo "Tails"
		c2=$(( $c2+1 ))
	fi

	if (( $c1==11 || $c2==11 ))
	then
		if (( $c1==11 ))
		then
			echo ""
			echo "HEADS won 11 times"
			over=0
		elif (( $c2==11 ))
		then
			echo ""
			echo "TAILS won 11 times"
			over=0
		fi
	else
		over=1
	fi
done
