#!/bin/bash
#this script contains simple stream editor commands


sed 's/blue/pink/' data.txt
#to replace the occurence of blue with pink

sed -e '
s/blue/green/
s/cat/dog/' data.txt
#use of mutiple editor commands 

sed -f script.sed data.txt
#reading editor commands from a file
