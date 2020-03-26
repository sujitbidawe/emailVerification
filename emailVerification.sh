#!/usr/local/bin/bash

shopt -s extglob

emailPattern="^([a-z]{3,}[0-9a-z]*)"

read -p "enter a pin code to validate: " email

if [[ $email =~ $emailPattern ]]
then
	echo "$email is a valid email address"
else
	echo "$email is not a valid email address"
fi