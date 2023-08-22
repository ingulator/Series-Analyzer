#! /bin/bash

function display_max(){
    echo "display_max\n"

    local arr=("$@")

    local max=${arr[0]}
    for n in "${ar[@]}" ; do
        ((n > max)) && max=$n
    done
    return $max
  
}

function display_avg(){
    echo "display_avg\n"

    local arr=("$@")


}
function display_min(){
    echo "display_min\n"

    local arr=("$@")

    local min=${arr[0]}
    for n in "${arr[@]}" ; do
        ((n < min)) && min=$n
    done
    return $min
}
function display_count(){
    echo "display_count\n"
    local arr = ("$@")
    return "${arr[@#]}"
}
function display_sum(){
    echo "display_sum\n"

    local arr=("$@")
  
    #return $sum
   
}