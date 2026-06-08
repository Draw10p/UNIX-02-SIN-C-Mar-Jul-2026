#!/bin/bash

#Assigning values to variables
FIRST_NAME="Darwin"
LAST_NAME="Roman"

#Create output.txt file and write the current date in it
date +"%d-%m-%Y" > output.txt

#Write the full name to the output.txt file
echo "$FIRST_NAME $LAST_NAME" >> output.txt

#Create a backup of the output.txt file
cp output.txt output_backup.txt

#Print the contents of the output.txt file to the terminal
cat output.txt