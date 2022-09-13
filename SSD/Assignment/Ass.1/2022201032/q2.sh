#!/bin/bash

mixedarr=({A..Z})
mixedarr+=({a..z})
mixedarr+=({0..9})

caparr=({A..Z})

smallarr=({a..z})

numarr=({0..9})

specialarr=("!" "@" "#" "$" "%" "^" "&" "/" "(" ")" "{" "}" "[" "]" "'" ";" ":" "<" ">" "?" "|")


VAR=$(shuf -i 6-20 -n 1)   #-i:input range inclusive(6 to 20)   #-n:o/p atmost n 


rand=$[$RANDOM % ${#mixedarr[@]}]
randmixed=${mixedarr[$rand]}          
pass+=$randmixed2              


echo "${mixedarr[@]}"     #prints all elements of mixedarr.
echo "${#mixedarr[@]}"    #prints size of array.
# echo "${#mixedarr[@]}:-"${#mixedarr[@]}
echo "$RANDOM:-"$RANDOM

# len=0

# while [ $len -lt $VAR ]; do
#   rand=$[$RANDOM % ${#smallarr[@]}]
#   randsmall=${smallarr[$rand]}
  
#   rand=$[$RANDOM % ${#caparr[@]}]
#   randcap=${caparr[$rand]}

#   rand=$[$RANDOM % ${#numarr[@]}]
#   randnum=${numarr[$rand]}

#   rand=$[$RANDOM % ${#specialarr[@]}]
#   randspecial=${specialarr[$rand]}

#   pass+=$randcap
#   pass+=$randnum
#   pass+=$randspecial
#   pass+=$randsmall
 
#   len=$(( $len + 4 ))
 
# done

# lenofpassord=${#pass}

# diff=$(( $lenofpassword-$VAR ))
# diff=$(( $diff + 1 ))


# if (( $diff!=0 )); then
#   updatedlenpassword=${pass::-$diff}
# else
#   updatedlenpassword=$pass
# fi


# updatedsize=$(( ${#updatedlenpassword} -1 ))

# rand=$[$RANDOM % ${#specialarr[@]}]
# randmixed2=${specialarr[$rand]}

# updatedlenpassword+=$randmixed2

# echo $updatedlenpassword
