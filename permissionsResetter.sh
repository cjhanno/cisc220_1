#!BIN/BASH

# if -s
#How to take the two parameters?


while true #-s
	for $file in #third input
	do
		current=$(stat -c '%A' "$file");
		old=$(stat -c '%A' "#currentfile"); 
		if [ "$current" == "$old" ]; then
			echo "Old: $(stat -c '%A' "$file")";
			echo "Current: $(stat -c '%A' "#currentfile")";
			echo "File: $file";
		fi
	done

done
#i if -r
for $file in #third input
do
	current=$(stat -c '%A' "$file");
	old=$(stat -c '%A' "#currentfile");
	if [ "$current" != "$old" ]; then
		#change file permissions here	
	fi
done




echo "$file permissions reset from $current to $old" 

