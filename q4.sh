#!/bin/bash


#permissionSaver.sh
#clear

n=0

if [ ! -e 'savedPermissions' ] then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions;
fi

while [ -e 'savedPermissions'$n ] do
		$n=$n+1
done
ls -l | awk '{print $1 " "$NF}' > savedPermissions$n


#end of permissionSaver.sh


