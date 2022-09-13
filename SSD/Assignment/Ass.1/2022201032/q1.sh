#!/bin/bash

isprime(){
	t=$1
	if (( t<=1 )); then
		prime=0
		# return
	else
		for (( q = 2; q <t ; q++ )); do
			if (( ((t%q))==0 )); then
				prime=0
			fi
# 			echo  $prime
		done
	fi
}

#echo "Enter N: "

read N

if (( $N==0 || $N==1 || $N==2 || $N==3 || $N==4 )); then
	echo "0"
else
	echo "Twin Prime Pairs are:"
	sum=6

	for (( i = 3; i <=$N; i++ )); do
	    prime=1
		isprime $i

		if (( prime==1 )); then
			j=$(( i+2 ))
			if (( j<=$N )); then
				prime=1
				isprime $j
				if (( prime==1 )); then
					echo "("$i,$j")"

					sum=$(( $sum+8 ))
				
				fi

			fi
			
		fi
		
	done

	sum=$(( $sum-8 ))

	echo $sum

fi

