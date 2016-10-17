#!/bin/bash


#permissionSaver.sh
#clear

n=1

if [ ! -e 'savedPermissions' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions;
fi

while [ -e 'savedPermissions$n' ]; do
	echo $n++
	#line above does not work. Point math can't be done but not sure
	#What kinds of alternatives exist. 
done
ls -l | awk '{print $1 " "$NF}' > 'savedPermissions$n'

#end of permissionSaver.sh


