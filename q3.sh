#!/bin/bash

echo "Welcome to CISC220 Racing Arena"
echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

carA[40]='|->'
carB[40]='|->'
carC[40]='|->'
for i in $(seq 41 79); do
carA[i]='_'
carB[i]='_'
carC[i]='_'
done

carA[80]='# Lane 1 #'
carB[80]='# Lane 2 #'
carC[80]='# Lane 3 #'

echo ${carA[*]}
echo ${carB[*]}
echo ${carC[*]}

((counter1=1))
((counter2=1))
((counter3=1))
while true; do
read input

if [ $input == '1' ]; then
carA[counter1]='~'
carA[((counter1 + 40))]=' '
((counter1=counter1 + 1))
if [ $counter1 == '41' ]; then
echo "PLAYER 1 WINS!"
break
fi

elif [ $input == '2' ]; then
carB[counter2]='~'
carB[((counter2 + 40))]=' '
((counter2=counter2 + 1))
if [ $counter2 == '41' ]; then
echo "PLAYER 2 WINS!"
break
fi

elif [ $input == '3' ]; then
carC[counter3]='~'
carC[((counter3 + 40))]=' '
((counter3=counter3 + 1))
if [ $counter3 == '41' ]; then
echo "PLAYER 3 WINS!"
break
fi

elif [ $input == 'q' ]; then 
break

else
echo "Not a valid input"

fi
clear
echo ${carA[*]}
echo ${carB[*]}
echo ${carC[*]}
done
