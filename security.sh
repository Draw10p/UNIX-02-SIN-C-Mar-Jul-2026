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
7. id -u # User ID
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id -u
# 0
8. id -g  # Principal Group ID                                                                                                                       
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id -g
# 0
9. id -G # All the groups IDs                                                                                                                         
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id -G
# 0
#-----------------------------------------------------------------------------------------------------------------------------
Create a new directory
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # mkdir ~/proyecto_unix/                                                                                                                      
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # ls -la  ~/proyecto_unix/
# total 8
# drwxr-xr-x 2 root root 4096 may  8 15:06 .
# drwx------ 1 root root 4096 may  8 15:06 ..
#-----------------------------------------------------------------------------------------------------------------------------
10. groupadd # command creates a new user group on a Linux operating system.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # groupadd desarrolladores
11. groupadd -g 2000 # It creates a new user group and explicitly sets its Group ID to 2000.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # groupadd -g 2000 operaciones
12. groupadd --system #The command creates a system group, typically used for daemons and background system services.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # groupadd --system servicios_web

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 X 130 # grep -E "desarrolladores|operaciones|servicios_web" /etc/group
# desarrolladores:x:1000:
# operaciones:x:2000:
# servicios_web:x:995:
#-----------------------------------------------------------------------------------------------------------------------------
grep -E "GID_MINI|GID_MAX|SYS_GID" /etc/login.defs  #It extracts the configured minimum and maximum Group ID ranges from the /etc/login.defs file.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 X 2 # grep -E "GID_MINI|GID_MAX|SYS_GID" /etc/login.defs 
# GID_MAX                 60000
# #SYS_GID_MIN              101
# #SYS_GID_MAX              999
# SUB_GID_MAX             600100000
#-----------------------------------------------------------------------------------------------------------------------------
Creation of new groups
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # grep "diseño\|marketing\|cache_web" /etc/group
# marketing:x:2100:
# cache_web:x:102:
#-----------------------------------------------------------------------------------------------------------------------------
usermod -aG desarrolladores root #The command adds the root user to the existing group named desarrolladores without removing it from its current groups.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # usermod -aG desarrolladores root 
usermod -aG diseno root  # The command adds the root user to the existing group named diseno without removing it from its current groups.   
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # usermod -aG diseno root       
#-----------------------------------------------------------------------------------------------------------------------------
grep "desarrolladores\|diseno" /etc/group #The command searches the /etc/group file for lines containing either "desarrolladores" or "diseno".
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # grep "desarrolladores\|diseno" /etc/group
# desarrolladores:x:1000:root
# diseno:x:1001:root
#-----------------------------------------------------------------------------------------------------------------------------
adduser root marketing #This command adds the existing user root to the secondary group named marketing.
#[Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id root
# uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores),1001(diseno),2100(marketing)
#-----------------------------------------------------------------------------------------------------------------------------
usermod -aG grupo_temporal root #This command creates a new user group called grupo_temporal on the Linux system.
#[Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id root
# uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores),1001(diseno),2100(marketing),2101(grupo_temporal)
#-----------------------------------------------------------------------------------------------------------------------------
usermod -G desarrolladores #The command replaces the specified user's secondary groups exclusively with the desarrolladores group.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id root
# uid=0(root) gid=0(root) grupos=0(root),1000(desarrolladores)
#-----------------------------------------------------------------------------------------------------------------------------