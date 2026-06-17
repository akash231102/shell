#!/bin/bash

number=$1

if [ $number -lt 10 ]; then
    echo "$number is less than 10"
elif [ $number -eq 10 ]; then
    echo "$number is equal to 10"
else 
    echo "$number is greated than 10"
fi