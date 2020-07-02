#!/bin/bash -x

isHead=1
isTail=0
toss=$(( RANDOM%2 ))
if [ $toss -eq $isHead ]
then
	echo Its Head
else
	echo Its Tail
fi
