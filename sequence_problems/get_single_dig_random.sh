#!/bin/bash 

random=$RANDOM
result=$(( random%10 ))
echo "Single digit random number is" $result
