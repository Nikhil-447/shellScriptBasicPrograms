#! /bin/bash
read -p "Pease enter your number :" n
result=1;
for((i=0; i<=n; i++))
do
   #result=$(( result*2 ))
   result=$((2**i))
   echo $result
done


