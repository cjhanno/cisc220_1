#!/bin/bash

# Question 3
# start message
clear
echo "Welcome to CISC220 Racing Arena"
echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

#testing track for car 1

carA=("|->")
carA[41]="# Lane 1 #"

#for x in carA
# if x < 40
# carA(x) = " "

echo ${carA[*]}

for (( n=4; n<=40; n++ )); do carA[n]="\ "; done


echo ${carA[*]}

for (( n=4; n<=40; n++ )); do carA[n]='\ '; done

echo ${carA[*]}


#for x in carA ; do carA[x]=" "; done
#echo ${carA[*]}



#declare -A carA
#carA=([start]=(|-> [2]=" ")

#echo${carA[start]}




#bonus?

# read -p "How many users are playing?"

