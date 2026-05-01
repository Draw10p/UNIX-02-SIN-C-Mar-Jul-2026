# 1 Exercise
 ~ # [ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
 BIOS
# This result is obtained when we run qemu-system-x86_64 without specifying that it should use a UEFI firmware file (such as OVMF). 
# In addition, we format the virtual image with FAT and use syslinux, which is designed to boot in traditional BIOS mode.
#-------------------------------------------------------------------------------------------------------------------------------------
# 2 Exercise
ls /
bin   dev   echo  init  root  sbin  usr
# We can see that almost all the standard FHS directories we covered in class are missing, such as:

# /etc (configurations) /home (users) /var (logs and databases) /tmp (temporary files)
# /dev, /proc, /sys (virtual file systems for devices and processes).

# This happens because what we’re building isn’t a complete operating system; it’s just an initramfs. Its only purpose in real 
# life is to provide the minimum tools needed to mount the actual hard drive, which is what we’ll be doing in this exercise.
#-------------------------------------------------------------------------------------------------------------------------------------
# 3 Exercise
~ # ls -la /bin/
total 2440
drwxr-xr-x    2 0        0             1920 May  1 17:01 .
drwxr-xr-x    7 0        0              200 May  1 17:22 ..
lrwxrwxrwx    1 0        0                7 May  1 17:01 arch -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ash -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 base32 -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 base64 -> busybox
-rwxr-xr-x    1 0        0          2497624 May  1 17:01 busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 cat -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 chattr -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 chgrp -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 chmod -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 chown -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 conspy -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 cp -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 cpio -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 cttyhack -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 date -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 dd -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 df -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 dmesg -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 dnsdomainname -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 dumpkmap -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 echo -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ed -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 egrep -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 false -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 fatattr -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 fdflush -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 fgrep -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 fsync -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 getopt -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 grep -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 gunzip -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 gzip -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 hostname -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 hush -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ionice -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 iostat -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ipcalc -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 kbd_mode -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 kill -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 link -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 linux32 -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 linux64 -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ln -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 login -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ls -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 lsattr -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 lzop -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 makemime -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mkdir -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mknod -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mktemp -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 more -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mount -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mountpoint -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mpstat -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mt -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 mv -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 netstat -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 nice -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 pidof -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ping -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ping6 -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 pipe_progress -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 printenv -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 ps -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 pwd -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 reformime -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 resume -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 rev -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 rm -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 rmdir -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 rpm -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 run-parts -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 scriptreplay -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 sed -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 setarch -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 setpriv -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 setserial -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 sh -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 sleep -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 stat -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 stty -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 su -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 sync -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 tar -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 touch -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 true -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 umount -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 uname -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 usleep -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 vi -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 vmstat -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 watch -> busybox
lrwxrwxrwx    1 0        0                7 May  1 17:01 zcat -> busybox
~ # 
# Since a standard Linux executable is large because it contains headers and dependency information, combining all the code into a single master file (BusyBox) 
# reduces the total size of the operating system from several megabytes to just 1 or 2 MB. This is an advantage on devices with very limited storage capacity.
#-------------------------------------------------------------------------------------------------------------------------------------
# 4 Exercise
~ # echo "hola" > test.txt
~ # stat test.txt
  File: test.txt
  Size: 5               Blocks: 8          IO Block: 4096   regular file
Device: 3h/3d   Inode: 420         Links: 1
Access: (0644/-rw-r--r--)  Uid: (    0/ UNKNOWN)   Gid: (    0/ UNKNOWN)
Access: 2026-05-01 17:36:05.608404801 +0000
Modify: 2026-05-01 17:36:05.608404801 +0000
Change: 2026-05-01 17:36:05.608404801 +0000
~ # 
# We can see that, yes, a great deal, since the operating system cannot allocate half a block. It allocated a full block of 4096 bytes, 
# but the file only uses 5 bytes. The remaining 4091 bytes are wasted and cannot be used by any other file without causing internal fragmentation.
#-------------------------------------------------------------------------------------------------------------------------------------
# 5 Exercise
root ➜ /boot-files $ parted -l && echo -e "\n---\n" && lsblk -f
Model: Msft Virtual Disk (scsi)
Disk /dev/sda: 48.3GB
Sector size (logical/physical): 512B/4096B
Partition Table: msdos
Disk Flags: 

Number  Start   End     Size    Type     File system  Flags
 1      1049kB  48.3GB  48.3GB  primary  ext4


Model: Msft Virtual Disk (scsi)
Disk /dev/sdb: 32.2GB
Sector size (logical/physical): 512B/4096B
Partition Table: gpt
Disk Flags: 

Number  Start   End     Size    File system  Name  Flags
14      1049kB  5243kB  4194kB                     bios_grub
15      5243kB  116MB   111MB   fat32              boot, esp
 1      116MB   32.2GB  32.1GB  ext4


Model: Msft Virtual Disk (scsi)
Disk /dev/sdc: 550GB
Sector size (logical/physical): 512B/4096B
Partition Table: gpt
Disk Flags: 

Number  Start   End    Size   File system  Name      Flags
 1      1049kB  550GB  550GB  ext4         ext4part



---

NAME    FSTYPE FSVER LABEL UUID FSAVAIL FSUSE% MOUNTPOINTS
loop0                                          
loop1                                          
loop2                                          
loop3                                          
loop4                             15.7G    45% /workspaces/.codespaces/.persistedshare
                                               /home/vscode/.minikube
                                               /var/lib/docker
                                               /etc/hosts
                                               /etc/hostname
                                               /etc/resolv.conf
                                               /workspaces
loop5                                          
sda                                            
└─sda1                            38.2G     8% /tmp
sdb                                            
├─sdb1                            10.2G    65% /workspaces/.codespaces/shared
│                                              /.codespaces/bin
│                                              /vscode
│                                              /usr/sbin/docker-init
├─sdb14                                        
└─sdb15                                        
sdc                                            
└─sdc1                                         
sr0
# As we can see from the commands executed, the /dev/sda disk uses the traditional MBR partitioning scheme, while the /dev/sdb and /dev/sdc disks use the modern GPT standard. 
# As for the file systems in use, the predominant format is ext4, which is used for the main data and storage partitions on all three disks (sda1, sdb1, and sdc1); 
# Additionally, the FAT32 system is used on a small partition of the second disk (sdb15), which is configured with the boot and esp flags, indicating that it serves as the EFI system partition required for the operating system’s boot sequence.                                            