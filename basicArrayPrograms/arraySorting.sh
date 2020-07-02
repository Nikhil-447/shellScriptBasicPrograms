#!/bin/bash

for(( i=0; i<=9 ; i++ ))
do
   arr[i]=$((RANDOM%900+100))
done

echo "Original Array: " ${arr[@]}

for(( i=0; i<9 ; i++ ))
do
	for((j=0; j<9-$i; j++))
    	do
        	if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        	then
            	# swap
            		temp=${arr[j]}
            		arr[$j]=${arr[$((j+1))]}
            		arr[$((j+1))]=$temp
        	fi
	done
done

echo "Sorted Array :" ${arr[*]}

echo ${arr[8]} is the second largest value

echo ${arr[1]} is the second smallest value
