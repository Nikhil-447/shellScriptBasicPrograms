#!/bin/bash

Rs=100
betCount=0
lostCount=0
winCount=0
while [ $Rs -ge 0 ] && [ $Rs -le 200 ]
do
	bet=$((RANDOM%2))
	betCount=$((betCount+1))
	if [ $bet -eq 0 ]
	then
		Rs=$((Rs-1))
		lostCount=$((lostCount+1))
	else
		Rs=$((Rs+1))
		winCount=$((winCount+1))
	fi
done

echo "Total Number of bests done:"$betCount
echo "No of Wins:"$winCount
echo "No of loses:"$lostCount
sum=$((winCount+lostCount))
echo "Cross Check of bet Counts:"$sum
