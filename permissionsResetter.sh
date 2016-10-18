#!BIN/BASH

echo what would you like to do? 
echo input -s to show changes or -r to revert changes
read optionInput
echo What file would you like to revert to?
read fileInput

n=1

if [ $optionInput == '-s' ]; then
	for $file in $fileInput
	do
		n=$(($n + 1));
		current=$(stat -c '%A' "$file");
		old=$(cut -c2 $fileInput[$n]); 
		if [ "$current" == "$old" ]; then
			echo "Old: $(stat -c '%A' "$file")";
			echo "Current: $(stat -c '%A' "#currentfile")";
			echo "File: $file";
		fi
	done

fi
if [ $optionInput == '-r' ]; then
	for $file in $fileInput
	do
		n=$(($n + 1));
		current=$(stat -c '%A' "$file");
		old=$(cut -c2 $fileInput[$n]);
		if [ "$current" != "$old" ]; then
			chmod $old $file	
		fi
	done
fi

echo "$file permissions reset from $current to $old" 

