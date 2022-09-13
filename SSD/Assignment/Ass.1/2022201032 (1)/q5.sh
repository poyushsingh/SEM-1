#!/bin/bash

#echo "Enter number:"

read n 

n0=2
n1=1
n2=0

#echo $n0
#echo $n1


if [[ $n<=-1 ]]
 then
   echo 0
elif [[ $n -eq 0 ]]
then
    echo 2
elif [[ $n -eq 1 ]]
then
    echo 1
else
   for ((c=1;c<n;c++))
   do
      n2=$(BC_LINE_LENGTH=0 bc <<< "$n1+$n0")
      n0=$(BC_LINE_LENGTH=0 bc <<< "$n1")
      n1=$(BC_LINE_LENGTH=0 bc <<< "$n2")
   
   done
   echo $n2 
fi


















   
