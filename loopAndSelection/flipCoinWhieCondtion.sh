#!/bin/bash

isHead=1
isTail=0
Hcount=0
Tcount=0
while [ $Hcount != 11 -a $Tcount != 11 ]
do
   toss=$((RANDOM%2))

   if [ $toss -eq $isHead ]
   then
	Hcount=`expr $Hcount + 1`
   else
	Tcount=`expr $Tcount + 1`
   fi

done

echo $Hcount heads
echo $Tcount tails
