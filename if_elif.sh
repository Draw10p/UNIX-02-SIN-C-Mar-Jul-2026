#!/bin/bash
USER_INPUT="${1}"
#Check if the command line argument is empty. If no input is provided,
# display an error message and exit the script with status code 1 to indicate failure.
if [[ -z "${USER_INPUT}" ]]; then
	echo "You must provide an argument!"
	exit 1
fi
# Test whether the provided argument is a regular file.
# If the condition is true, print that it is a file.
if [[ -f "${USER_INPUT}" ]]; then
	echo "${USER_INPUT} is a file."
# Only if the previous file test failed, check if the argument is a directory.
# This condition will not be evaluated if the file test above was successful.
# If the argument is a directory, display an appropriate message.
elif [[ -d "${USER_INPUT}" ]]; then
	echo "${USER_INPUT} is a directory."
# If neither condition above is true (not a file and not a directory),
# inform the user that the argument is neither a file nor a directory.
else
	echo "${USER_INPUT} is not a file or a directory."
fi