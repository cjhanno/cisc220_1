#!/bin/bash

clear
echo "Welcome to CISC220 Racing Arena"
echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

carA=("|->")
carB=("|->")
carC=("|->")

carA[41]="# Lane 1 #"
carB[41]="# Lane 2 #"
carC[41]="# Lane 3 #"

for (( n=4; n<=40; n++ )); do carA[n]="_"; done
for (( n=4; n<=40; n++ )); do carB[n]="_"; done
for (( n=4; n<=40; n++ )); do carC[n]="_"; done


echo ${carA[*]}
echo ${carB[*]}
echo ${carC[*]}

#while read -r var ; do
#	if [[$var==1]]; then
#	for (( b=0; b<40; b++ )); do carA[b]="~";done
#	fi
#done

#while loop combined with read var to see what user inputs modify track
#user enter's 1 then carA append ~ to begining of list



#bonus?

#read -p "How many players are racing today: " -n1 var
#x=1
#echo "car$x"

#while ((x<=$var)); do
#	car$x=("|->"); 
#	car$x[41]="# Lane $x #";
#	for (( n=1; n<=$var; n++ )); do car$x[n]="-"; done
#	$x+=1;
#	done  
