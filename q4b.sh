#!/bin/bash



if [ "$1" == "-s" ]; then
echo "Old file permissions: "
cat $2

echo "New file permissions: "
ls -l | awk '{print $1 " "$NF}' > newfilepermissions
cat newfilepermissions
fi

