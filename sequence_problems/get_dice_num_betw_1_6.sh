#!/bin/bash

read -p "Enter start" start
read -p "Enter end" end
random=$RANDOM
divisor=$(( end-start+1 ))
result=$(( $start+($random%$divisor) ))
echo "Dice number between 1 to 6: " $result

