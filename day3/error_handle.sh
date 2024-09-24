#!/bin/bash

create_directory()
{
	mkdir $1
}


if ! create_directory; 
then
	echo " Custom Error : Directory is already created"
	exit 1

fi
	
echo "Dir successfully created with the name : $(ls)"
