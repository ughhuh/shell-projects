#!/bin/bash

# run with sudo: sudo ./4_2.sh

read -p "Enter a program to install: " program

apt install ${program} >& /dev/null

if [ ${?} -ne 0 ]
then
	echo "Something went wrong. Please try again."
	exit 111
else
	echo "Installation was successful!"
	exit 0
fi
