#!/bin/bash

#single line comment

#Multiple line comments
<<comment1
This is a comment section
comment1

# Assigning value to a variable 
myName="bharatmali"
echo "my name is $firstName, and today's date is $(date) "  #Print using echo


#First way to read the input
echo "enter your name to print"
read yourEnteredname # This takes the input under the variable yourEnteredname 

#Providing multiple values such as two arguments along with entered variable
echo "your name is $yourEnteredname, argument 1 is: $1, argument 2 is: $2"


