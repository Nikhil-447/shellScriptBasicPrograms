#! /bin/bash
read -p "Pease enter your number :" n
result=1;
for(( i=0; i<=n; i++ ))
do
     while [ $result -lt 256 ]
    do
      result=$(( $result*2 ))
      echo $result
    done
done

