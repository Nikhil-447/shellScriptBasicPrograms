#! /bin/bash

read n

for (( i=2;$n>1; i++))
do
   while [ $((n%i)) -eq 0 ]
   do
      printf $i" "
      n=$((n/i))
   done
done


