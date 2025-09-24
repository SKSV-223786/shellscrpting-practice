#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Please run this script with root privilege"
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error: Installing My sql is Failure"

else 
    echo "installing mysql is success"
fi