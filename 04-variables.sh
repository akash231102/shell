#!/bin/bash

START_DATE=$(date +%s)
sleep 10
END_DATE=$(date +%s)

executed_date=$(($START_DATE-$END_DATE))

echo "executed time is $executed_date"