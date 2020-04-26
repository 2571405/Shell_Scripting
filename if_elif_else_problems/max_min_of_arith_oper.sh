#!/bin/bash 

read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

first=`echo $a $b $c | awk '{t=$1+($2*$3)} {print t}'`
second=`echo $a $b $c | awk '{t=$1%($2+$3)} {print t}'`
third=`echo $a $b $c | awk '{t=$3+($1/$2)} {print t}'`
fourth=`echo $a $b $c | awk '{t=($1*$2)+$3} {print t}'`

echo "Result of 1st expression: " $first
echo "Result of 2nd expression: " $second
echo "Result of 3rd expression: " $third
echo "Result of 4th expression: " $fourth

min1=`echo $first $second | awk '{if ($1<$2) print $1; else print $2}'`
min2=`echo $min1 $third | awk '{if ($1<$2) print $1; else print $2}'`
min=`echo $min2 $fourth | awk '{if ($1<$2) print $1; else print $2}'`

max1=`echo $first $second | awk '{if ($1>$2) print $1; else print $2}'`
max2=`echo $max1 $third | awk '{if ($1>$2) print $1; else print $2}'`
max=`echo $max2 $fourth | awk '{if ($1>$2) print $1; else print $2}'`

echo "Minimum is: " $min
echo "Maximum is: " $max

