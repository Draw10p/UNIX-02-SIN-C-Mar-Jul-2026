#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
local name
name="Black Hat Bash"
echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a l
ocal variable."

# Difference between global and local variables:
# Global variables can be used throughout the programme, while local variables are limited to a function or block of code. Local variables must be declared with the local keyword. 
# Particularly when calling Bash functions:
# To call a function, simply type its name without parentheses. parameters are written after the function name and separated by spaces, just like command line parameters.