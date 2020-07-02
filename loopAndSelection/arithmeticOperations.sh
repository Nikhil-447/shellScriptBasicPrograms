#!/bin/bash -x

read a
read b
read c

#a+b*c
res1=`echo  $a $b $c | awk '{print $1+$2*$3}'`

#a%b+c
res2=`echo $a $b $c | awk '{print $1%$2+$3}'`

#c+a/b
res3=`echo $a $b $c | awk '{print $3+$1/$2}'`

#a*b+c

res4=`echo $a $b $c | awk '{print $1*$2+$3}'`

echo $res1
echo $res2
echo $res3
echo $res4
