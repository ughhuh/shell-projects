#!/bin/bash

add() {	
	c=$(( $1 + $2 )) 
}

subs() { 
	c=$(( $1 - $2 )) 
}

mult() { 
	c=$(( $1 * $2 )) 
}

div() { 
	c=$(( $1 / $2 )) 
}

options="- + * / Exit"
set -f

select x in ${options}
do
	if [ ${x} = "Exit" ]
	then
		break
	else
		read -p "Enter 1st value: " a
		read -p "Enter 2nd value: " b

		case ${x} in
			'+')
				add ${a} ${b}
				;;
			'-')
				subs ${a} ${b}
				;;
			'*')
				mult ${a} ${b}
				;;
			'/')	
				div ${a} ${b}
				;;
		esac

		echo "Result: ${c}"
	fi
done
