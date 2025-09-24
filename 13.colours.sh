#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " $R Error: Please run this script with root privilege"
    exit 1 # failure is other than 0
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "Error: Installing $2.... $R Failure $N"
        exit 2 

    else 
        echo -e "installing $2...  $G success $N"
    fi
}
#installation of MYSQL
dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql is already exist.....$Y SKIPPING $N"
fi

#installation of Nginx
dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx is already exist....$Y Skipping $N"
fi
#installation of mongodb-mogosh
dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e  "nginx is already exist....$Y Skipping $N"
fi