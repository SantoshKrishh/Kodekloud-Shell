#!/bin/bash
#This is using find command to to check the directorye
Directory=$(find /home/bob/caleston -type d)

if [ "$Directory" = "/home/bob/caleston" ];
then

echo "$Directory exists"

else

echo "$Directory not found"

fi
