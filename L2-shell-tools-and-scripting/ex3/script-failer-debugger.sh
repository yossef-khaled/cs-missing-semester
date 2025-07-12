#!/usr/bin/env bash

errnum=0
count=0

while [[ $errnum -eq 0 ]]
do
    if [[ $count -eq 0 ]]
    then 
        ./target.sh > result.txt 2>> result.txt
    else
        ./target.sh >> result.txt 2>> result.txt
    fi
    errnum="$?"
    count=$((count+1))	
done

cat result.txt

echo "$count"
