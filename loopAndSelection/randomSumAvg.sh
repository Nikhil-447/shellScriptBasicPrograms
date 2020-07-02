#! /bin/bash

sum=0;
value=0;
avg=0;

for i in {0..4}
do
	value=$((( RANDOM%90 ) +10 ))
	sum=$(( sum + value ))
done

avg=$(( sum / 5 ))
echo sum=$sum
echo average=$avg
