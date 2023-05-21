#!/bin/bash
#This script compares conditional arguments and checks which is greater
#
A=$1
B=$2

if [ "$A" -gt "$B" ]; then
    echo "$A is greater"
else
    echo "$B is greater"
fi
