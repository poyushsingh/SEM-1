#!/bin/bash

maxdd(){
	max_days=0;
	mm=$1
	year=$2

	if [[ $mm -eq 1 || $mm -eq 3 || $mm -eq 5 || $mm -eq 7 || $mm -eq 8 || $mm -eq 10 || $mm -eq 12 ]];
	then
		max_days=31
	elif [[ $mm -eq 4 || $mm -eq 6 || $mm -eq 9 || $mm -eq 11 ]];
	then
		max_days=30
	elif [[ $year%4 -eq 0 || $year%100 -ne 0 ]]; 
	then
		max_days=29
	elif [[ (($year%400 -eq 0)) ]];
	then
		max_days=29
	else max_days=28
	fi

}

#echo "ENTER YEAR : "

read N

n=$((10#$N))				#forcing shell script to read input N in base 10,else N having leading zeros will be treated as Base 8;

max_day=0
flag=0

for ((month=1;month<=12;month++))
do
	maxdd month n
	for ((day=1;day<=$max_days;day++))
	do
		dd=$day
		mm=$month
		yyyy=$n
		
		printf -v mm_p "%02d" $mm 		
		
		printf -v dd_p "%02d" $dd

		ddmm=$(echo $dd_p$mm_p)
		
		yyyy_rev=$(echo $yyyy | rev)
		
		if [[ "$ddmm" == "$yyyy_rev" ]]; then
			flag=1
			echo $dd_p"-"$mm_p"-"$yyyy
			#echo
			break 2
		fi
	done
done

if [[ $flag -eq 0 ]]; then
	echo "No Palindrome days available in the given year"
fi
