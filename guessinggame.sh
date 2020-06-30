#!/usr/bin/env bash
function guess_file_count {
		num_desired=0
    while [[ $num_desired -eq 0 ]]
    do
        echo "Guess the number of files in Current Directory: "
        read guess
        if [[ $guess =~ ^\s*$ || $guess =~ [^0-9]+ ]]
        then
            echo "Please Enter a Number"
        elif [[ $guess -gt $1 ]]
        then
            echo "Your guess is high: think lower"
        elif [[ $guess -lt $1 ]]
        then
            echo "Your guess is low: think higher"
        else
            echo "Congratulations You Got it right."
            let num_desired=1
        fi
    done
}

file_count=$(ls -1A | wc -l)
guess_file_count file_count
