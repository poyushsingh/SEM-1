#!/bin/bash

#echo "enter number : "
read N

n=$((10#$N))		#forcing shell script to read input N in base 10,else N having leading zeros will be treated as Base 8;

if (( $n != 1111 && $n != 0000 )); then
    echo -n $n " "
    while (( n != 6174 )); do
    
        ascarr=()
        descarr=()
        
        for (( i = 0; i < 4; i++ )); do
            descarr+=($((n%10)))
            ascarr+=($((n%10)))
            n=$((n/10))
        done
        
        
        for (( i = 0; i < 3; i++ )); do
            for (( j = 0; j < 3; j++ )); do
                if (( ${ascarr[j]} > ${ascarr[$((j+1))]} )); then
                    t=${ascarr[j]}
                    ascarr[$j]=${ascarr[$((j+1))]}
                    ascarr[$((j+1))]=$t
                fi
            done
        done
        
        #echo ASCARR:"${ascarr[*]}"
        
        
        for (( i = 0; i < 3; i++ )); do
            for (( j = 0; j < 3; j++ )); do
                if (( ${descarr[j]} < ${descarr[$((j+1))]} )); then
                    t=${descarr[j]}
                    descarr[$j]=${descarr[$((j+1))]}
                    descarr[$((j+1))]=$t
                fi
            done
        done
        
        #echo DESCARR:"${descarr[*]}"
        
        asc=0
        desc=0
        
        for (( i = 0; i < 4; i++ )); do
             asc=$((asc * 10))
             ar=$((${ascarr[$i]}))
             asc=$((asc + ar))
             #echo $ar
        done
        
        for (( i = 0; i < 4; i++ )); do
             desc=$((desc * 10))
             dr=$((${descarr[$i]}))
             desc=$((desc + dr))
             #echo $dr
        done
        
        #echo ascending:$asc
        #echo descendind:$desc
        n=$(( $desc-$asc ))
        echo -n $n " "
        
        
    done
    
    echo

else
    echo "invalid"
fi

