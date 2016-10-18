#Question 2

#!/bin/bash

clear

var=$(ifconfig ens33|grep 'inet addr:'|awk '{print $2}'|sed -r 's/.{5}//')

if [[ $var == 127* ]]; then
	echo "$var Local IP";
elif [[ $var == 10* ]] || [[ $var == 192.168* ]] ; then
	echo "$var Private IP";
else
	echo "$var Public IP";
fi
