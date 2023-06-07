#!/bin/bash
# Develop a new script at /home/bob/launch-rockets.sh to call the create-and-launch-rocket script to launch 5 rockets 
# for the following missions using a for loop.
# lunar-mission, mars-mission, jupiter-mission, saturn-mission, mercury-mission

for mission in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
do
        bash /home/bob/create-and-launch-rocket $mission
done

# Question 2

# using same script to use peform opration by getting names from file 
for mission_name in $(cat /tmp/assets/mission-names.txt)
do
    bash /home/bob/create-and-launch-rocket $mission_name
done

# Question 3

# Create a simple script called loop.sh at /home/bob. 
# The script should make use of a loop and print the numbers 31 to 40 with each number in a new line.

for((i=31;i<=40;i++)); do
    echo "${i}"
done
                  # or

for i in {31..40}
do echo $i
done

# Question 3

# We have a few different applications running on this system. The list of applications are stored at /tmp/assets/apps.txt file. 
# Each application has it's logs stored in /var/log/apps directory under a file with its name. Check it out!
# A simple version of the script has been developed for you /home/bob/count-requests.sh that inspects the log file of an application and prints the number of GET, POST, and DELETE requests. Update the script to use a for loop to read the list of applications from the apps.txt file and count number of requests for each application and display it in a tabular format like this.
                                                    ###### Result Sample ######
# Log name GET POST DELETE
# (
# - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Finance 10 20 50

# Marketing 20 10 30
# )

echo -e " Log name   \t      GET      \t      POST    \t   DELETE "
echo -e "------------------------------------------------------------"

for app in $(cat /tmp/assets/apps.txt)
do
  get_requests=$(cat /var/log/apps/${app}_app.log | grep "GET" | wc -l)
  post_requests=$(cat /var/log/apps/${app}_app.log | grep "POST" | wc -l)
  delete_requests=$(cat /var/log/apps/${app}_app.log | grep "DELETE" | wc -l)
  echo -e " ${app}    \t ${get_requests}    \t    ${post_requests}   \t   ${delete_requests}"

done

# Question 4

# We have some images under the directory /home/bob/images. 
# Develop a script /home/bob/rename-images.sh to rename all files within the images folder that has extension jpeg to jpg. 
# A file with any other extension should remain the same.
# Tip: Use a for loop to iterate over the files within /home/bob/images
# Tip: Use an if conditional to check if the file extension is jpeg.
# Tip: Use mv to rename a file.
# To replace jpeg to jpg in a filename use echo user1.jpeg | sed 's/jpeg/jpg/g'.
for file in $(ls images)
do
        if [[ $file = *.jpeg ]]
                then
                new_name=$(echo $file| sed 's/jpeg/jpg/g')
                mv images/$file images/$new_name
        fi
done