#!/bin/bash

#question 4 part 2

#permission resetter


#ARG 1


#read -p argument "-s" or "-r" for show and reset

if [ "$1"=="-s" ]; then
 echo 'show';
 echo 'file permissions: ' ; #read out permissions
 cat $2

else 
echo "reset"; #reset permistions to $Bvar -1
echo "old file permissions: "
 #chmod filepermissions$n (where n is $2 - 1)(pipe city here)
fi



#if -s do  show files/dir's that have changed permissions

#else if -r do reset to old permissions


#ARG 2

Bvar=$2
#name of savedPermissions file created by the permissionsSaver.sh script


echo "Do something with $Avar and $Bvar."
