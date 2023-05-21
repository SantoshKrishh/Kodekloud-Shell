#!/bin/bash
#This script checks if a dir exists using "-d"
if [ -d "/home/bob/caleston" ]
then
  echo "Directory exists"
else
  echo "Directory not found"
fi