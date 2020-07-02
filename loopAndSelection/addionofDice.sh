#! /bin/bash

result=0
dice1=0
dice2=0
i=0

for i in {1..6}
do
	dice1=$((( RANDOM%6 ) + 1 ))
	dice2=$((( RANDOM%6 ) + 1 ))
	result=$(( dice1 + dice2 ))
	echo "$dice1 + $dice2 =$result"
done


