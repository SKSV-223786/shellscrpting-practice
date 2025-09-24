#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Please run this script with root privilege"
    exit 1 # failure is other than 0
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error: Installing My sql is Failure"
    exit 2 

else 
    echo "installing mysql is success"
fi

#installation of Nginx

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installation of nginx is failure"
    exit 1
else
    echo "installation of nginx is success"
fi

#installation of mongodb-mogosh

dnf install python3 -y
 
if [ $? -ne 0 ]; then
    echo "ERROR: Installing python3 is failure"
    exit 1
else    
    echo "installation of python3 is success"
fi