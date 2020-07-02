#!/bin/bash

read start
read end

for(( j=$start; j<=$end; j++ ))
do
flag=1

   for(( i=2; i<=$j/2; i++ ))
   do
	if [ $((j%i)) -eq 0 ]
	then
		flag=0
	fi
   done
   if [ $j -eq 0 ] || [ $j -eq 1 ]
   then
	flag=0
   elif [ $flag -eq 1 ]
   then
	printf $j" "
   fi
done
