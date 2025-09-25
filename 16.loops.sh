#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f2 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" | tee -a $LOG_FILE
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
# $@

for package in $@
do
  #check package is already installed or not
  dnf list installed $package &>>$LOG_FILE

  #if exit status is o, already installed. -ne 0 need to install it.

  if [ $? -ne 0 ]; then 
    dnf install $package -y &>>$LOG_FILE
    VALIDATE $? "$package"
else 
    echo -e "$package already installed....  $Y SKIPPING $N"
fi


done

