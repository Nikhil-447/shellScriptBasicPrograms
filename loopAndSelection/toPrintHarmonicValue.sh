#!/bin/bash
harmonic=1
read -p "Please enter the sequence limit: " seqcount
for((i=1; i<=seqcount; i++))
do
   printf "1/"$i" + "
   harmonic=$(echo | awk '{print one+1/two}' one=$harmonic two=$i)
done

echo $harmonic
