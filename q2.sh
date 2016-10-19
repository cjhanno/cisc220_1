#Question 2

#!/bin/bash

#Connor Hannough		10085081
#Vanessa Reda 			10194381
#Ryan Kartavicius		10155548

clear

echo "Hello, user. Lets see what your IP is:"

var=$(ifconfig ens33|grep 'inet addr:'|awk '{print $2}'|sed -r 's/.{5}//')

if [[ $var == 127* ]]; then
	echo "Your IP is $var and this is a Local IP";
else
	echo "Your IP is $var and this is a Private IP";
fi
