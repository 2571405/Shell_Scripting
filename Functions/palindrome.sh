#!/bin/bash

function palindrome() {

i=1
num=$1

while (( $num!=0 ))
do
	val=$(( $1%10 ))
	num=$(( $num/10 ))
	count=$(( $count+1 ))
done

num=$1
reverse=0
i=1

while (( $i<=$count ))
do
	var=$(( $num%10 ))
	num=$(( $num/10 ))
	reverse=$(( ($reverse*10)+$var ))
	i=$(( $i+1 ))
done

if (( $2==$reverse ))
then
	echo "$1 and $2 are palindromes!"
else
	echo "$1 and $2 are not palindromes"
fi

}

read -p "Enter 1st number to check: " num1
read -p "Enter 2nd number to check: " num2
result1=$( palindrome $num1 $num2 )
echo $result1

