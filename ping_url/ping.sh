#!/bin/bash

func () {
 	read -p "Enter a link: " link
	$num = 1
	ping -c ${num} ${link} >& /dev/null
	if [ ${?} -ne 0 ]
	then
		return 1
	else
		return 0
	fi
}

func

if [ ${?} -ne 0 ]
then
	echo "Host is unavailable."
else
	echo "Host is available."
fi
