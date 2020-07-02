#!/bin/bash

arr[0]=1
arr[1]=-2
arr[2]=1
arr[3]=-3
arr[4]=2
len_ar=${#arr[@]}
for (( i=0; i<$len_ar; i++ ))
do
	for (( j=$(($i+1)); j<$len_ar; j++ ))
	do
		for (( k=$(($j+1)); k<$len_ar; k++ ))
		do
			val=$((-1*${arr[i]}))
			val1=$((${arr[j]}+${arr[k]}))
			if [ $val -eq $val1 ]
			then
				echo ${arr[i]} ${arr[j]} ${arr[k]}
			else
				echo "no pairs found"
			fi
		done
	done
done
