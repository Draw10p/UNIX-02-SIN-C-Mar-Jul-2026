#relative path
cd calculadora/
#absolute path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/calculadora
#l=list a=all i=inode
ls -lai
#the same but in separate way
ls -l -a -i
#displays detailed metadata for the current directory, where Device identifies the specific hardware partition storing the data, Inode represents the unique filesystem serial number for that entry, and Links shows the count of hard links pointing to that inode
stat .
#  File: test.txt
#  Size: 5               Blocks: 8          IO Block: 4096   regular file
#Device: 3h/3d   Inode: 420         Links: 1
#Access: (0644/-rw-r--r--)  Uid: (    0/ UNKNOWN)   Gid: (    0/ UNKNOWN)
#Access: 2026-05-01 17:36:05.608404801 +0000
#Modify: 2026-05-01 17:36:05.608404801 +0000
#Change: 2026-05-01 17:36:05.608404801 +0000

# change directory to home directory from any locaton of my operative system
cd 
# asbosulte route
cd /home/codespace
#shortcut
 cd ~
#enviroment variable
echo $HOME
#command displays the username
whoami
#lists all files and directories in long format, sorted by their modification time
ls -lt
#opens the comprehensive reference manual for the list directory contents utility
man ls
#lists the first five entries within the /dev directory, which contains special files
ls /dev | head -5
#lists the last five entries within the /etc directory, which traditionally stores the system-wide configuration files and subdirectories for the operating system
ls /etc | tail -5