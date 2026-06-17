#!/bin/bash

echo "variables passed to script $*"
echo "variables passed to script $@"
echo "current working directory $PWD" 
echo "$0"
sleep 10
echo "$$"
echo "$USER"
echo "$HOME"
