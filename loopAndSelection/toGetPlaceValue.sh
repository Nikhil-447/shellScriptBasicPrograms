#!/bin/bash -x

read number

echo $number

case ${#number} in
   1)
	echo units ;;
   2)
	echo tens ;;
   3)
	echo hundreds ;;
   4)
	echo thousands ;;
   *)
	echo INVALID NUMBER ;;
esac
