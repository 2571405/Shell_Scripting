#!/bin/bash

declare -A die_roll

i=0
count=1
end=0
while (( end!=1 ))
do
	random=$RANDOM
	divisor=$(( 6-1+1 ))
	result=$(( 1+($random%$divisor) ))
	echo "Dice number between 1 to 6: " $result

	### ENTER VALUES IN THE DICTIONARY ###
	over1=1
	while (( $over1!=0 ))
	do
		die_roll[$i]=$result
		over1=0
	done

	total=${#die_roll[@]}
	loop1=$(( $total-1 ))
	for (( j=0;j<=$loop1;j=$j+1 ))
	do
		val=${die_roll[$j]}
		for (( k=$j+1;k<=$loop1;k=$k+1 ))
		do
			if (( ${die_roll[$k]}==$val ))
			then
				count=$(( $count+1 ))
				if (( $count==10 ))
				then
					end=1
				fi
			fi
		done
		count=1
	done
i=$(( $i+1 ))
done

echo "The dictionary of die numbers is: "${die_roll[@]}
echo "The number that occured max no of times is: " $val

### FINDING MAX AND MIN NUMBER OF TIMES ###
array_count=${#die_roll[@]}
loop2=$(( $array_count-1 ))

for (( m=0;m<=$loop2;m=$m+1 ))
do
	if (( ${die_roll[$m]}==1 ))
	then
		a=$(( $a+1 ))
	elif (( ${die_roll[$m]}==2 ))
	then
		b=$(( $b+1 ))
	elif (( ${die_roll[$m]}==3 ))
   then
      c=$(( $c+1 ))
	elif (( ${die_roll[$m]}==4 ))
   then
      d=$(( $d+1 ))
	elif (( ${die_roll[$m]}==5 ))
   then
      e=$(( $e+1 ))
	elif (( ${die_roll[$m]}==6 ))
   then
      f=$(( $f+1 ))
	fi
done

array_count=($a $b $c $d $e $f)
min=${array_count[0]}
for (( n=0;n<=5;n=$n+1 ))
do
	min=$(( ${array_count[$n]}<$min ? ${array_count[$n]} : $min ))
done

if (( $min==$a ))
then
	echo "The number that occured minimum no of times: " 1
elif (( $min==$b ))
then
	echo "The number that occured minimum no of times: " 2
elif (( $min==$c ))
then
	echo "The number that occured minimum no of times: " 3
elif (( $min==$d ))
then
	echo "The number that occured minimum no of times: " 4
elif (( $min==$e ))
then
	echo "The number that occured minimum no of times: " 5
elif (( $min==$f ))
then
	echo "The number that occured minimum no of times: " 6
fi

