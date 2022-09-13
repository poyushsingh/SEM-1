#!/bin/bash

n=$1

linecnt=$( wc -l < $n )

#echo $linecnt

linemid=$(( $linecnt/2 ))

#echo $linemid

tail -n+$linemid $n | head -n 1


