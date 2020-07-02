#!/bin/bash

declare -A birthMonth

janCount=0
febCount=0
marCount=0
aprCount=0
mayCount=0
junCount=0
julCount=0
augCount=0
sepCount=0
octCount=0
novCount=0
decCount=0

#storing each person's birth in a dictinary with corresponding Month as Key

for (( i=0; i<50; i++ ))
do
   randomMonth=$((RANDOM%12+1))

   case $randomMonth in

   1)
	janArray[$janCount]="Person$i"
	janCount=$((janCount+1))
	birthMonth["Jan"]=${janArray[@]};;
   2)
	febArray[$febCount]="Person$i"
	febCount=$((febCount+1))
	birthMonth["Feb"]=${febArray[@]};;
   3)
	marArray[$marCount]="Person$i"
	marCount=$((marCount+1))
	birthMonth["Mar"]=${marArray[@]};;
   4)
	aprArray[$aprCount]="Person$i"
	aprCount=$((aprCount+1))
	birthMonth["Apr"]=${aprArray[@]};;
   5)
	mayArray[$mayCount]="Person$i"
        mayCount=$((mayCount+1))
        birthMonth["May"]=${mayArray[@]};;
   6)
	junArray[$junCount]="Person$i"
        junCount=$((junCount+1))
        birthMonth["Jun"]=${junArray[@]};;
   7)
	julArray[$julCount]="Person$i"
        julCount=$((julCount+1))
        birthMonth["Jul"]=${julArray[@]};;
   8)
	augArray[$augCount]="Person$i"
        augCount=$((augCount+1))
        birthMonth["Aug"]=${augArray[@]};;
   9)
        sepArray[$sepCount]="Person$i"
        sepCount=$((sepCount+1))
        birthMonth["Sep"]=${sepArray[@]};;
   10)
        octArray[$octCount]="Person$i"
        octCount=$((octCount+1))
        birthMonth["Oct"]=${octArray[@]};;
   11)
        novArray[$novCount]="Person$i"
        novCount=$((novCount+1))
        birthMonth["Nov"]=${novArray[@]};;
   12)
        decArray[$decCount]="Person$i"
        decCount=$((decCount+1))
        birthMonth["Dec"]=${decArray[@]};;
   *)
	echo "INVALID INPUT" ;;
   esac
done

#Displaying the persons who's birth fall in which month

read -p "You would like to know birthdays fall in ? 1..12: " userMonth

   case $userMonth in

	1)
		echo "Jan: ${birthMonth["Jan"]}" ;;
	2)
		echo "Feb: ${birthMonth["Feb"]}" ;;
	3)
		echo "March: ${birthMonth["Mar"]}" ;;
	4)
		echo "April: ${birthMonth["Apr"]}" ;;
	5)
		echo "May: ${birthMonth["May"]}" ;;
	6)
		echo "June: ${birthMonth["Jun"]}" ;;
	7)
		echo "July: ${birthMonth["Jul"]}" ;;
	8)
		echo "Aug: ${birthMonth["Aug"]}" ;;
	9)
		echo "Sep: ${birthMonth["Sep"]}" ;;
	10)
		echo "Oct: ${birthMonth["Oct"]}" ;;
	11)
		echo "Nov: ${birthMonth["Nov"]}" ;;
	12)
		echo "Dec: ${birthMonth["Dec"]}" ;;
	*)
		echo "INVALID USER INPUT"

   esac

