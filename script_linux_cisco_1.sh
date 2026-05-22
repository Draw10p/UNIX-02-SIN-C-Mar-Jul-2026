#!/bin/bash
# Script de comandos Linux comunes
# Demonstrates basic Linux commands with proper shell script format

# 1. List files in the current directory
ls

# 2. Aptitude package manager with "moo" easter egg
# aptitude moo

# 3. List directory contents in long format with detailed information
ls -l

# 4. List directory contents in reverse alphabetical order
ls -r

# 5. Alternative ways to use ls with -l and -r flags combined
ls -lr

# 6. Display the current working directory path
pwd

# 7. Change directory demonstrations
cd /
pwd
cd ..
pwd
cd .
pwd
cd ~
pwd

# 8. List files sorted by timestamp
ls -lt

# 9. List files sorted by file size
ls -lS

# 10. Reverse the sort order of files
ls -r

# 11. Switch user command (su)
# su - changes to another user (usually requires password)

# 12. Secure alternative to su command using sudo
# sudo -u user command

# 13. Change file or directory permissions
# chmod 755 filename

# 14. Run a command from the current directory using ./
# ./ indicates the command must be run from the current directory

# 15. Change owner of files and directories
# chown user:group filename

# 16. View contents of small files and related commands

# cat - display file contents
cat /etc/hostname

# head - display first lines of a file
head -n 3 /etc/hostname

# tail - display last lines of a file
tail -n 3 /etc/hostname

# more - basic file viewer (forward only)
# more filename

# less - advanced file viewer (bi-directional)
# less filename

# 17. Copy files from source to destination
# cp source_file destination_file

# 18. Copy files or partitions at the bit level using dd
# dd if=input_file of=output_file bs=block_size count=number_of_blocks

# 19. Move or rename files and directories
# mv source_file destination_file
