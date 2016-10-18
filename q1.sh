#!/bin/bash

result=0
counter=0
while true; do
	if [ "$counter" == "0" ]; then
		
		echo "Please enter a number: "
		read result
		if [[ $result =~ ^-?[0-9]+$ ]]; then
			counter=1
		else
			echo "Invalid input"
		fi

	elif [ "$counter" == "1" ]; then
		echo "Please enter an operator: "
		read operator
		if [ "$operator" == "q" ]; then
			break
		elif [ "$operator" == "+" ]; then
			counter=2
		elif [ "$operator" == "-" ]; then
			counter=2
		elif [ "$operator" == "/" ]; then
			counter=2
		elif [ "$operator" == "*" ]; then
			counter=2
		else
			echo "Invalid operator"
		fi
		
	elif [ "$counter" == "2" ]; then
		echo "Please enter a number: "
		read number
		if [[ $result =~ ^-?[0-9]+$ ]]; then
			if [ "$operator" == "+" ]; then
				result=$(($result + $number))
			elif [ "$operator" == "-" ]; then
				result=$(($result - $number))	
			elif [ "$operator" == "/" ]; then
				result=$(($result / $number))
			elif [ "$operator" == "*" ]; then
				result=$(($result * $number))
			fi
		
			echo "Your current result is: $result"
			counter=1
		else
			echo "Invalid input"
		fi
	fi
done
