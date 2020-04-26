#!/bin/bash

### FUNCTION TO FIND MAX AND MIN IN ARRAY###

function max_min(){

array=($@)
max=${array[0]}
min=${array[0]}
total=${#array[@]}
loop=$(( $total-1 ))

for (( j=1;j<=$loop;j=$j+1 ))
do
	max=$(( ${array[$j]}>$max ? ${array[$j]} : $max ))
	min=$(( ${array[$j]}<$min ? ${array[$j]} : $min ))
	#j=$(( $j+1 ))
done
echo $min
echo $max

}



### ARRAY ELEMENTS ###

for i in {0..9}
do
   random=$(( $RANDOM%1000 ))
   arr[$i]=$random
   i=$(( $i+1 ))
done

echo "The array is: " ${arr[@]}


### FIND HIGHEST AND LOWEST ###
highest=$( max_min $( echo ${arr[@]} ) )

minim=`echo $highest | awk '{print $1}'`
maxim=`echo $highest | awk '{print $2}'`


### DISCARD MIN FROM ARRAY ##
for k in {0..9}
do
	if (( ${arr[$k]}==$minim ))
	then
		pos1=$k
		unset 'arr[$pos1]'
	fi
	k=$(( $k+1 ))
done


### COPY ARRAY TO COPY1[] ###

x=0
for element1 in ${arr[@]}
do
	copy1[$x]=$element1
	x=$(( $x+1 ))
done



### DISCARD MAX FROM ARRAY ###
count=${#copy1[@]}
loop1=$(( $count-1 ))
for (( l=0;l<=$loop1;l=$l+1 ))
do
        if (( ${copy1[$l]}==$maxim ))
        then
                pos2=$l
                unset 'copy1[$pos2]'
        fi
done


### COPY ARRAY TO COPY2 ###
y=0
for element2 in ${copy1[@]}
do
        copy2[$y]=$element2
        y=$(( $y+1 ))
done


### FIND 2nd MAX AND 2nd MIN ###
SecondHighest=$( max_min $( echo ${copy2[@]} ) )
min2=`echo $SecondHighest | awk '{print $1}'`
max2=`echo $SecondHighest | awk '{print $2}'`
echo "2nd smallest element in the array is: "$min2
echo "2nd largest element in the array is: "$max2
