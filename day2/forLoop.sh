#!/bin/bash

#this is for  and while loop section

# echo "enter the repo numbers from where you want to remove"
# read repo_number

<<comment
for (( i=$repo_number ; i>=1; i--));
do
	rmdir "demo$i" 
done

comment


<<comment2
for (( i=1 ; i<=$repo_number; i++));
do
        mkdir "demo$i"
done
comment2

for (( i=1 ; i<=$repo_number; i++));
do
        mkdir "demo$i"
done


# $1, $2, $3 arguments

for (( i=$2; i<=$3; i++ ))
do
        mkdir "$1$i"
done

