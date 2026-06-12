#!/bin/bash

# Set the filename to check
FILE="output1.txt"
# Create the file if it doesn't exist
touch "${FILE}"
# Loop until the file has content (size > 0)
until [[ -s "${FILE}" ]]; do
	# Display that the file is empty
	echo "${FILE} is empty..."
	# Notify user to check again in 2 seconds
	echo "Checking again in 2 seconds..."
	# Wait 2 seconds before checking again
	sleep 2
done
# When file has content, display success message
echo "${FILE} appears to have some content in it!"