#! /bin/bash

read -p "Enter Number who's Prime Factors to be Known: " n
j=0
for (( i=2;$n>1; i++))
do
   while [ $((n%i)) -eq 0 ]
   do
      n=$((n/i))
      primeFactArray[j]=$i
      j=$((j+1))
   done
done

echo "Prime Factors Array:"${primeFactArray[@]}
