#!/bin/bash

flag=0
read -p "Enter A Positive Integer: " num

for(( i=2; i<=$num/2; i++ ))
do
   if [ $((num%i)) -eq 0 ]
   then
	flag=1

   break
   fi

done

if [ $num -eq 0 ] || [ $num -eq 1 ]
then
	echo Not Prime

elif [ $flag -eq 1 ]
then
	echo Not Prime
else
	echo Prime
fi

