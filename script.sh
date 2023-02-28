#!/bin/bash

#print the average age
awk -F ',' '{total += $2; n++} END {print "Average age: " total/n}' data.csv
#print the amount of Chihuahuas
grep -ci Chihuahua data.csv 
#print the dogs' names start with C and its breed
awk -F ',' '{ print $3, $1}' data.csv | grep -i " c" 
#Clean the trailing spaces and add "empty" to the empty fields 
sed 's/ ,/,/g' data.csv | sed 's/, /,/g' | sed 's/,,/,empty,/'
#Change by spaces instead of commas
sed 's/,/ /g' data.csv