#!/bin/bash
# Develop a new script at /home/bob/launch-rockets.sh to call the create-and-launch-rocket script to launch 5 rockets 
# for the following missions using a for loop.
# lunar-mission, mars-mission, jupiter-mission, saturn-mission, mercury-mission

for mission in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
do
        bash /home/bob/create-and-launch-rocket $mission
done

# using same script to use peform opration by getting names from file 
for mission_name in $(cat /tmp/assets/mission-names.txt)
do
    bash /home/bob/create-and-launch-rocket $mission_name
done