#!/bin/bash
#function to find max and min value
function findMaxAndMin(){
    largest=100
    smallest=1000
    for ((j=0; j<10; j++))
    do
        #when i am calling this function second time few values will be null so to avoid error i am using this condition
        if [ ! -z ${randomNumberArray[$j]} ]
        then
            #condition to find smallest
            if [ ${randomNumberArray[$j]} -le $smallest ]
            then
                smallest=${randomNumberArray[$j]}
            fi
            #condition to find largest
            if [ ${randomNumberArray[$j]} -ge $largest ]
            then
                largest=${randomNumberArray[$j]}
            fi
        fi
    done
}

for ((i=0; i<10; i++))
do
    randomNumberArray[$i]=$((RANDOM % 900 + 100))
done
echo ${randomNumberArray[@]}
#calling the function first time
findMaxAndMin
echo $largest
echo $smallest
for ((k=0; k<=${#randomNumberArray[@]}; k++))
do
    #condition to find where max and min value are located
    if [ ${randomNumberArray[k]} -eq $smallest -o ${randomNumberArray[k]} -eq $largest ]
    then
        #making current max and min value as null
        unset randomNumberArray[$k]
    fi
done
#in this echo you can find current min and max value are removed
echo ${randomNumberArray[@]}
#calling the function again so we will get the second largest and smallest
findMaxAndMin
echo $smallest
echo $largest
