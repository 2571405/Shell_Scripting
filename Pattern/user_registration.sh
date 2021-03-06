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

read -p "Enter mobile number: " num
num_patt="^[+][1-9]{2}[ ][0-9]{10}$"
if [[ $num =~ $num_patt ]]
then
	echo "Valid mobile number"
else
	echo "Invalid mobile number"
fi

read -p "Enter password: " pass
if [[ ${#pass} -ge 8 ]]
then
	if [[ "$pass" == *[A-Z]* ]]
	then
		if [[ "$pass" == *[0-9]* ]]
		then
			result=`echo $pass | grep -o -e [!@#$%_''""\^\&*-.\?] | wc -l`
    		if (( $result == 1 ))
    		then
    			echo "Valid Password"
    		else
      		echo "Invalid Password!"
    		fi
		else
			echo "Invalid password!"
		fi
	else
		echo "Invalid password!"
	fi
else
	echo "Invalid Password!"
fi
