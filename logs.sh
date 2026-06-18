#!/bin/bash

user_id=$(id -u)

log_folder=/var/log/shell-script
script_name=$( echo "$0" | cut -d "." -f1 )
logfile="$log_folder/$script_name.log"

if [ $user_id -ne 0 ]; then
    echo "need root priviliges"
    exit 1;
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "installing $2 is failure" | tee -a $logfile
    else
        echo "installing $2 is success" | tee -a $logfile
    fi
}

dnf list installed mysql &>>$logfile

if [ $? -ne 0 ]; then
    dnf install mysql -y &>>logfile
    validate $? "mysql"
else
    echo "mysql is already exist so skipping" | tee -a $logfile
fi