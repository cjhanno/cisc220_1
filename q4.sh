#!/bin/bash


#permissionSaver.sh
#Connor Hannough 10085081
#Vanessa Reda 10194381
#Ryan Kartavicius 10155548

clear

n=0

if [ ! -e 'savedPermissions' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions;
fi

while [ -e 'savedPermissions'$n ]; do
		n=$(($n + 1))
done
ls -l | awk '{print $1 " "$NF}' > savedPermissions$n
echo "savedPermissions$n saved"

#end of permissionSaver.sh


