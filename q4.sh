#!/bin/bash


#permissionSaver.sh
#clear

i=1

if [ ! -e 'savedPermissions' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions;
fi

while [ -e 'savedPermissions$i' ]; do
	(($i=$i+1))
	 
done
n=$i
ls -l | awk '{print $1 " "$NF}' > savedPermissions$n

#end of permissionSaver.sh


