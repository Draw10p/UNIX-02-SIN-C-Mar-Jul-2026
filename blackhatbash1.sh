#!/bin/bash
#!/usr/bin/env bash
#!/bin/bash -x
set -x
# bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df --human-readable
# bash -x blackhatbash1.sh
# bash -r blackhatbash1.sh
# chmod u+x blackhatbash1.sh
# ./blackhatbash1.sh
# bash -n blackhatbash1.sh
set +x