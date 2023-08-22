#!/bin/bash



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

    #Goes through our array and checks if our values are comprised of only numbers and no letters are found
    #If letters are found then the input is invalid, prompts the user and flips the checker flag to 0
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

function selectSeries(){
    PS3="select option: "
    options=("input series" "display series" "display max" "display min" "display average" "display amount" "display sum" "exit")
    while true
    do
         select option in "${options[@]}" Quit
         do
         case $option in 
         input_series)
         local inp=input_series
         show $inp
          ;; 
         display_series)
         local series=display_series
         show $series
          ;;
         display_series_sorted)
         local sorted=display_series_sorted
          ;;
         display_max)
         local max=display_max
         show $max
          ;;
         display_min)
         local min=display_min
         show $min
          ;;
         display_average)
         local avg=display_average
         show $avg
          ;;
         display_sum)
         local sum=display_sum
         show $sum
          ;;
         exit)
         exit ;;
         *)
         echo "Unknown choice $option"
         esac
         done
    done
}
function show() {
    echo $1
}


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

    #Goes through our array and checks if our values are comprised of only numbers and no letters are found
    #If letters are found then the input is invalid, prompts the user and flips the checker flag to 0
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

echo "the series analyzer"
selectSeries