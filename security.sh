1. id # This command prints the user and group identity information (UID, GID, and groups) for the current user.

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id
#  uid=0(root) gid=0(root) grupos=0(root) 
#-----------------------------------------------------------------------------------------------------------------------------
2. groups # Command prints the names of all the primary and secondary groups that the current user belongs to.

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # groups
# root
#-----------------------------------------------------------------------------------------------------------------------------
3. cat /etc/passwd # command outputs the complete, unfiltered contents of the system's user account file to the terminal.
4. cat /etc/passwd | head -10  #This command outputs the first 10 lines of the /etc/passwd file, which stores system user account information.

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # cat /etc/passwd | head -10
#root:x:0:0:root:/root:/usr/bin/zsh
#daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
#bin:x:2:2:bin:/bin:/usr/sbin/nologin
#sys:x:3:3:sys:/dev:/usr/sbin/nologin
#sync:x:4:65534:sync:/bin:/bin/sync
#games:x:5:60:games:/usr/games:/usr/sbin/nologin
#man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
#lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
#mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
#news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
#-----------------------------------------------------------------------------------------------------------------------------
5. touch test.txt / ls -la # My files and directories inherit the GID and UID

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # touch test.txt                                                                                                                        
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # ls -la
# total 68
# -rw-rw-rw-  1 root root     0 may  8 14:40 test.txt
#-----------------------------------------------------------------------------------------------------------------------------
6. cat /etc/group | head -10 / groups $USER # View all groups in the system
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # cat /etc/group | head -10
# root:x:0:
# daemon:x:1:
# bin:x:2:
# sys:x:3:
# adm:x:4:
# tty:x:5:
# disk:x:6:
# lp:x:7:
# mail:x:8:
# news:x:9:
#-----------------------------------------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------------------------------------