#!/usr/bin/bash

for num in {1..11..1}
do
   if [ $num == 1 ] || [ $num == 6 ]
   then
      for value in {1..11..1}
      do
          echo -n F
#          echo -n $value
      done
      echo
   else
      echo F
#      echo $num
   fi
done
