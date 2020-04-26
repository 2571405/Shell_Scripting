#!/bin/bash 

for i in {1..5}
do
ran=$RANDOM
op=$(( ran%100 ))
echo "Random number $i: "$op
sum=$(( $sum+$op ))
done

avg=`echo $sum | awk '{avg=$1/5} {print avg}'`
echo "The sum is: " $sum
echo "The average is: " $avg 

