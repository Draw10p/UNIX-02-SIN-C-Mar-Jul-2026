#!/bin/bash
touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "El commando lzl fallo"
echo "Hello World!" > output.txt
cat output.txt
echo "Bye World!" > output.txt
cat output.txt
echo "Goodbye!" >> output.txt
cat output.txt  

ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt

lzl 2> error.txt
cat < output.

cat << EOF
Black Hat Bash
by No Starch Press
EOF