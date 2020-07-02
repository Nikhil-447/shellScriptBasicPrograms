#!/bin/bash -x

echo Enter the Number
read num
temp=$num
rev=0
while [ $num -gt 0 ]
do

	#rem=`expr $num % 10`
	rem=$(( $num%10 ))
	#rev=`expr $rev * 10 + $rem`
	rev=$(( rev*10+rem ))
	#num=`expr $num / 10 `
	num=$(( num/10 ))
done

if [ $temp -eq $rev ]
then
	echo $temp is a Palindrome
else

	echo $temp Not a Palindrome
fi
