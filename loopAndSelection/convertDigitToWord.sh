#!/bin/bash

read num

case $num in
1)
   echo One ;;
2)
   echo Two ;;
3)
   echo Three ;;
4)
   echo Four ;;
5)
   echo Five ;;
0)
   echo Zero ;;
*)
  echo Out Of Range;;
esac
