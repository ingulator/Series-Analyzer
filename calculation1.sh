#!/bin/bash

function input_series(){

#this function takes input from the user and puting in an array.

echo "Enter different series: "  #output to enter new series
read -a series                   #read input as array
#echo ${series[@]}                #output the new series
}

input_series

#function display_series(){

#######	this function takes the series that was recieved from the outside and
#######	displays it in the order it was recieved (original order)

#recieve array from outside
#echo $@
#}


function display_series_sorted(){

###### this function takes the series from outside and displays it in 
###### ascending order.

#recieve series from outside#
array=($(printf '%u\n' "${series[@]}" | sort -n))
echo ${array[@]}
}

display_series_sorted $series 
