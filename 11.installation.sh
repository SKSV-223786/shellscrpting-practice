#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error: Please run this script with root privilege"
    exit 1 # failure is other than 0
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "Error: Installing $1 is Failure"
        exit 2 

    else 
        echo "installing $1 is success"
    fi
}
#installation of MYSQL
dnf install mysql -y
VALIDATE $? "mysql"

#installation of Nginx

dnf install nginx -y
VALIDATE $? "nginx"
#installation of mongodb-mogosh

dnf install python3 -y
VALIDATE $? "python3"