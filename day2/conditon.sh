#!/bin/bash

# this is for conditional statement

read -p "Enter my family member name :" member_name

if [ $member_name == "bharat" ];
then
	echo "the user is my family member"

elif [ $member_name == "laxmi" ];
then
        echo "the user is also my family member"

else 		
	echo "the user is not my member"
fi
