1. ls # This returns a list of the files in the current directory.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2. aptitude moo # This command is a package management feature available in some versions of Linux, which accepts “moo” as an argument
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3. ls -l # This lists the contents of a directory in long format and provides detailed information about each file
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4. ls -r # This lists the contents of a directory but displays the results in reverse alphabetical order.
-> ls -l -r / ls -rl / ls -lr # Different ways to use this command, including the -l
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
5. aptitude -v  moo # This command uses the -v option to demonstrate how the command's behavior can be modified using its various functions, resulting in different outputs each time it is run.
-> aptitude -v -v moo / aptitude -vv moo # Different ways to use this command
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
6. pwd # This command displays the working directory, including its current location within the file system
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
7. cd # This command is used to change directories and navigate the file system. 
-> cd / # This command takes you directly to the root directory
-> cd .. # This command refers to the directory above the current directory, sometimes called the parent directory. 
-> cd . # This command helps us determine the current directory where the user is located
-> cd ~ # This command helps us return to our home directory at any time
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
8. -t # This command will sort the files by their timestamp
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
9. -s # This command will sort the files by file size
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
10. -r # This command will reverse the sort order of the files, regardless of the sort type.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
11. su #This command allows us to temporarily act as a different user, which will open a new shell as the root user
# Alternatives for using the "su" command 
su -
su -l
su --login
-> sudo # This command can also be used to run a command with administrative privileges, such as the one used by the su 
-> -u # This command is used to specify a different user account
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
12. sl #This command is configured as a steam locomotive, so it requires administrative access to prevent the execution of sensitive or privileged commands.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
13. chmod # This command is used to change the permissions of a file or directory; only the root user or the file's owner can perform this action.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
14 ./ #This indicates that the “command” must be run from the current directory.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
15. chown # This command is used to change the owner of files and directories, which requires administrative access
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
16. cat # This command is used to quickly view the contents of small files.
-> head y tail # This is an option used to view a specific number of lines from the beginning or end of a file; use these commands.
-> -n # This option uses "head" and "tail" to specify the number of lines from the file you want to display, and uses the filename as an argument.
-> more # It's the most basic version that shows you the text and only lets you move forward
-> less # This is the advanced version, which does the same thing but lets you move freely up and down using the arrow keys.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
17. cp # This command is used to copy files. It is similar to the "mv" command, which requires at least two arguments: a source and a destination, which must have execute permissions to be used.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
18. dd # This command is used to copy files or entire partitions at the bit level.
# But it also has other features, such as cloning or deleting entire disks or partitions, another for copying raw data to removable devices such as USB drives or CD-ROMs, 
# as well as for creating a backup and restoring the MBR (Master Boot Record), and also for creating a file of a specific size filled with binary zeros, which can be used as a swap file (virtual memory).
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
19. mv # This command is used to move a file from one location in the file system to another.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Additional Notes
File Types Table
# Symbol    File type         Description
#  d        directory         A file used to contain other files.
#  -        regular file      Includes readable files, images, binary files, and compressed files.
#  l        symbolic link     Points to another file.
#  s        socket            Enables communication between processes.
#  p        pipe              Enables communication between processes.
#  b        block file        Used for communication with hardware.
#  c        character file    Used for communication with hardware.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Table of Permit Types
#Permission       Effects on Files                                          Effects on Directories
#read (r)         Allows the file's contents to be read or copied.          Without execute permission, it provides a brief listing of the files in the directory. With execute permission, `ls -l` provides a detailed listing of files.
#write (w)        Allows the file’s contents to be modified or rewritten.   Allows files to be added to or removed from a directory.    For this permission to work, the directory must have execute permission.
#execute (x)      Allows a file to run as a process, although               Allows the user to move out of the directory if the parent directory also has write permission.
#                 Script files will also require read permission.	
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Permission Sets Table
# Symbol        Meaning
# u    User:    The user who owns the file.
# g    Group:   The group that owns the file.
# o    Others:  Anyone other than the owner or a member of the owning group.
# a    All:     Refers to the user, group, and everyone else.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Table of Stock Types 
# Symbol    Meaning
# +         Add permission, if necessary
# =         Specify the exact permission
# -         Remove permission, if necessary
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# There are two locations where we should always have write and execute permissions: the home directory and the /tmp directory.
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
List of Special Arguments for the “dd” Command
# Argument      Description
# if            Input File: The input file to be read.
# of            Output File: The output file to be written to.
# bs            Block Size: The block size to be used. By default, the value is given in bytes. Use the following suffixes to specify other units: K, M, G, and T for kilobytes, megabytes, gigabytes, and terabytes, respectively.
# count         Count: The number of blocks to be read from the input file.