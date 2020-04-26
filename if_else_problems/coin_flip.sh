#!/bin/bash 

random=$RANDOM
toss=$(($random%2))
if (( $toss ))
then
	echo "Heads";
else
	echo "Tails";
fi
