#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "run this script with root priviliges"
    exit 1;
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "installing $2 is failure"
        exit 1
    else
        echo "installing $2 is success"
    fi
}

dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"