#!/bin/bash

Connor Hannough			10085081
Vanessa Reda 			10194381
Ryan Kartavicius		10155548

if [ "$1" == "-s" ]; then
	for line in $2 ; do
		current=$(ls -l $line* | awk '{print $1 " "$NF}'| cut -c1-10);
		old=$(stat -c '%A' "$line"); 
		if [ "$current" == "$old" ]; then
			echo "Old: $(stat -c '%A' "$line")";
			echo "Current: $(ls -l $line* | awk '{print $1 " "$NF}' | cut -c1-10)";
			echo "File: $line";
		fi
	done

fi
if [ "$1" == "-r" ]; then
	for line in $2; do
		current=$(ls -l $line* | awk '{print $1 " "$NF}' | cut -c1-10);
		old=$(stat -c '%A' "$line");
		if [ "$current" != "$old" ]; then
			chmod $old $line*;	
			echo "$line permissions reset from $current to $old";
		fi
	done
fi


