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