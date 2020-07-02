#!/bin/bash
oneCount=0
twoCount=0
threeCount=0
fourCount=0
fiveCount=0
sixCount=0
n=0
declare -A diceRoll
while [ $twoCount != 10 -a $oneCount != 10 -a $threeCount != 10 -a $fourCount != 10 -a $fiveCount != 10 -a $sixCount != 10 ]
do
   dice=$((( RANDOM%6 ) + 1 ))

#   echo $dice
   diceRoll[$n]=$dice
   n=$(( n+1 ))
   if [ $dice -eq 1 ]
   then
	oneCount=$(( oneCount+1 ))
   elif [ $dice -eq 2 ]
   then
	twoCount=$(( twoCount+1 ))
   elif [ $dice -eq 3 ]
   then
	threeCount=$(( threeCount+1 ))
   elif [ $dice -eq 4 ]
   then
	fourCount=$(( fourCount+1 ))
   elif [ $dice -eq 5 ]
   then
	fiveCount=$(( fiveCount+1 ))
   else
	sixCount=$(( sixCount+1 ))

   fi
done


echo "Dice Array Values:"${diceRoll[@]}
echo "Dict Keys Values:"${!diceRoll[@]}

holdDice=($oneCount $twoCount $threeCount $fourCount $fiveCount $sixCount)

echo "Dice Each Value counts:"${holdDice[@]}


if [ $oneCount -gt $twoCount ] && [ $oneCount -gt $threeCount ] && [ $oneCount -gt $fourCount ] && [ $oneCount -gt $fiveCount ] && [ $oneCount -gt $sixCount ]
then
	echo 1 is repeated maximum times i,e $oneCount times
elif [ $twoCount -gt $threeCount ] && [ $twoCount -gt $fourCount ] && [ $twoCount -gt $fiveCount ] && [ $twoCount -gt $sixCount ]
then
	echo 2 is repeated maximum times i,e $twoCount times
elif [ $threeCount -gt $fourCount ] && [ $threeCount -gt $fiveCount ] && [ $threeCount -gt $sixCount ]
then
	echo 3 is repeated maximum times i,e $threeCount times
elif [ $fourCount -gt $fiveCount ] && [ $fourCount -gt $sixCount ]
then
	echo 4 is repeated maximum times i,e $fourCount times
elif [ $fiveCount -gt $sixCount ]
then
	echo 5 is repeated maximum times i,e $fiveCount times
else
	echo 6 is  repeated maximum times i,e $sixCount times
fi


if [ $oneCount -lt $twoCount ] && [ $oneCount -lt $threeCount ] && [ $oneCount -lt $fourCount ] && [ $oneCount -lt $fiveCount ] && [ $oneCount -lt $sixCount ]
then
        echo 1 is repeated minimum times i,e $oneCount times
elif [ $twoCount -lt $threeCount ] && [ $twoCount -lt $fourCount ] && [ $twoCount -lt $fiveCount ] && [ $twoCount -lt $sixCount ]
then
        echo 2 is repeated minimum times i,e $twoCount times
elif [ $threeCount -lt $fourCount ] && [ $threeCount -lt $fiveCount ] && [ $threeCount -lt $sixCount ]
then
        echo 3 is repeated minimum times i,e $threeCount times
elif [ $fourCount -lt $fiveCount ] && [ $fourCount -lt $sixCount ]
then
        echo 4 is repeated minimum times i,e $fourCount times
elif [ $fiveCount -lt $sixCount ]
then
        echo 5 is repeated minimum times i,e $fiveCount times
else
        echo 6 is  repeated minimum times i,e $sixCount times
fi
