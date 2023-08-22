#! /bin/bash

#The function returns a 0 if the entered input is invalid (less than 3 or contains letters)
#otherwise, the function returns 1
function validate()
{
    local checker=1

    #If our array does not contain at least 3 numbers then echo the relevant message,-
    #telling the user that there are not enough numbers in the series
    if [[ $# -lt 3 ]]
    then
        echo "Less than 3 numbers were entered."
        checker=0
        return $checker 
    fi

    for i in "$@"
    do
        if [[ $i =~ ^[0-9]+$ ]]
        then
            continue
        else
            echo "Invalid input, series contains non numbers!"
            checker=0
            break  
        fi
    done

    return $checker
}