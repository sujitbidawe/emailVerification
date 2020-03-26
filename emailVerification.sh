#!/usr/local/bin/bash

shopt -s extglob

emailPattern="^([a-z]{1,}[0-9a-z]{0,}([_+-.]{0,1}[a-z0-9]{1,}){0,1}[@]{1}[a-z]{1,}[.]{1}[a-z]{2,})"

read -p "enter a pin code to validate: " email

if [[ $email =~ $emailPattern ]]
then
	echo "$email is a valid email address"
else
	echo "$email is not a valid email address"
fi