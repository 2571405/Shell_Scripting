#!/bin/bash

function prime() {

for (( i=2;i<=$(( $1-1 ));i=$(( $i+1 )) ))
do
   if (( ($1%$i)==0 ))
   then
      var1=$i
   else
      var2=$i
   fi
done

if (( $1==1 ))
then
   echo "1 is neither prime nor composite!"
elif (( $var1 ))
then
   echo "$1 is not a prime number!"
   var1=0
else
   echo "$1 is a prime number!"
   var2=0
fi

}

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

if (( $1==$reverse ))
then
   echo "$1 is a palindrome number"
	echo "and its palindrome $reverse is also prime"
else
   echo "$1 is not a palindrome number"
	result=$( prime $reverse )
	echo "and its palindrome" $result
fi

}


read -p "Enter a number: " num
result1=$( prime $num )
result2=$( palindrome $num )
echo $result1
echo $result2

