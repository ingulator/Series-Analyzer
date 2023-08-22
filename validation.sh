#! /bin/bash

function validate()
{
    if [[ ${#$1[@]} -lt 3 ]]
    then
        echo "Less than 3 numbers were entered."
        exit 1
    fi
    
    local checker=1

    for i in "${$1[@]}"
    do
        if [[ $1[$i] =~ ^[0-9]+$ ]]
        then
            continue
        else
            echo "Invalid input, series contains non numbers!"
            checker=0
            exit 1  
        fi
    done
}