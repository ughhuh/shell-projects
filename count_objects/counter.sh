#!/bin/bash

count_objects() {
	x=("$@")
	for i in "${x[@]}"
	do
		local var=$(ls ${i}| wc -l)
		echo "Number of objects in ${i}: ${var}"
	done
}

array=()

while true
do
	read -p "Enter a directory path: " path
	if [ ${path} = "exit" ]
	then
		break
	fi
	array+=("${path}")
done

count_objects ${array[@]}
