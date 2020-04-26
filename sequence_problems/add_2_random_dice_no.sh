#!/bin/bash

random1=$RANDOM
op1=$(( 1+($random1%6) ))
echo "1st random dice number is: " $op1
random2=$RANDOM
op2=$(( 1+($random2%6) ))
echo "2nd random dice number is: " $op2
result=$(( op1+op2 ))
echo "The addition of two random dice numbers are: " $result
