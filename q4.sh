#!/bin/bash


#permissionSaver.sh
#clear


if [ ! -e 'savedPermissions' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions;
elif [ ! -e 'savedPermissions1' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions1;
elif [ ! -e 'savedPermissions2' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions2;
elif [ ! -e 'savedPermissions3' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions3;
elif [ ! -e 'savedPermissions4' ]; then
	ls -l | awk '{print $1 " "$NF}' > savedPermissions4;
elif [ ! -e 'savedPermissions5' ]; then
	ls -l | awk '{print $1 " "$NF]' > savedPermissions5;











fi
#end of permissionSaver.sh


