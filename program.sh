<<<<<<< program.sh
<<<<<<< program.sh
<<<<<<< program.sh
=======
#!/bin/bash

source calculation1.sh
source calculation2.sh
echo "the series analyzer"
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
>>>>>>> serialanalyzer.sh
=======
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
>>>>>>> calculation1.sh
=======
>>>>>>> tmp.sh
