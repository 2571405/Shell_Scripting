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

read -p "Enter last name: " lname
lname_pattern="^[[:upper:]][[:lower:]]{2,}$"
if [[ $lname =~ $lname_pattern ]]
then
   echo "Valid last name"
else
   echo "Invalid last name!"
fi

read -p "Enter email: " email
patt="^([a-z A-Z 0-9]+)([\. + -][a-z A-Z 0-9]+)?@([a-z 0-9]+)\.([a-z]{2,4})(\.[a-z]{2,4})?$"
if [[ $email =~ $patt ]]
then
	echo "Valid Email"
else
	echo "Invalid email!"
fi

