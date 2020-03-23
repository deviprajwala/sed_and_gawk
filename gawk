#!/bin/bash
#The script contains basic commands of gawk

gawk '{ print "Hello World"  }' line.txt
#prints hello world once it receives input from stdin

gawk '{ print "field 1 :"$1 " field 4 :"$4 }' data.txt  
#prints data using data field variables

gawk -F: '{print "field 1:"$1 }' field.txt
gawk -F* '{print "field 3:"$3 }' field.txt
gawk -F% '{print "field 2:"$2 }' field.txt
#prints data when diffrent field separator is used

gawk '{
$6 = "yellow"
print $0
}' data.txt
#using multiple commands in program script

gawk -f script.gawk data.txt
#reading the program from a file


gawk 'BEGIN {print "contents of file are"}
     {print $0}
     END {print "end of file"}' data.txt
#running the script before processing and after processing the data


