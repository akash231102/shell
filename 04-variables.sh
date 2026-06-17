#!/bin/bash

START_DATE=$(date +%M)
sleep 10
END_DATE=$(date +%M)

executed_date=$(($START_DATE-$END_DATE))

echo "executed time is $executed_date"