#!/bin/bash

echo "User Registration Program"
read -p "Enter first name: " fname
fname_pattern="^[[:upper:]][[:lower:]]{2,}$"
if [[ $fname =~ $fname_pattern ]]
then
	echo "Valid first name"
else
	echo "Invalid first name!"
fi
