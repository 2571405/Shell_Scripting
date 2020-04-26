#!/bin/bash -x


read -p "Enter number of elements you want in the array: " range

n=$(( $range-1 ))
for (( i=0;i<=$n;i=$i+1 ))
do
	read -p "Enter element at index $i: " value
	arr[$i]=$value
done

echo ${arr[@]}


#SORT THE ARRAY

over=0
while (( over!=$n ))
do
   for (( j=0;j<=$(( $n-1 ));j=$(( $j+1 )) ))
   do
      if (( ${arr[$j]}>=${arr[$j+1]} ))
      then
         temp=${arr[$j]}
         arr[$j]=${arr[$j+1]}
         arr[$j+1]=$temp
      fi
   done
over=$(( $over+1 ))
done


#FIND THE COMBINATION


for (( m=0;m<=$n;m=$m+1 ))
do
	if (( ${arr[$m]}>=0 ))
	then
		echo "No such combination!"
		exit
	else
		val=${arr[m]}
		pos=$(( (-$val) ))
		for (( k=1;k<=$n;k=$k+1 ))
		do
			l=$(( $k+1 ))
			while (( l<=$n ))
			do
				if (( (${arr[$k]}+${arr[$l]})==$pos ))
				then
					echo $val ${arr[$k]} ${arr[$l]} "are the three values that sums up to zero!"
					exit
				else
					l=$l+1
				fi
			done
		done
	fi
done
echo "No such combination!"








