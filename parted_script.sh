sudo apt update #(It updates the local list of available software packages and their latest versions from the repositories)
sudo apt upgrade #(It downloads and installs the newest available versions of all software packages currently installed on your system.)
sudo apt install parted #(It downloads and installs the parted software package)
pip install numpy #(It uses Python's package installer (pip) to download and install the numpy library)
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n" #(It lists all the available storage devices and their partitions, then lists the filesystems and their types, and finally shows the disk space usage in a human-readable format)
loop #(It creates a loop device, which is a virtual block device that can be used to mount files as if they were physical disks)
[-d /sys/firmware/efi] && echo "UEFI" || echo "BIOS" #(It checks if the system is booted in UEFI mode by looking for the presence of the /sys/firmware/efi directory. If it exists, it prints "UEFI"; otherwise, it prints "BIOS")
echo "mi archivo" > test.txt #(It creates a new file named test.txt and writes the string "mi archivo" into it)
stat > test.txt #(It displays detailed information about the file test.txt, such as its size, permissions, and timestamps)
  File: test.txt
  Size: 11              Blocks: 8          IO Block: 4096   regular file
Device: 7,4     Inode: 1572971     Links: 1
Access: (0666/-rw-rw-rw-)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-03-30 15:50:24.343193123 +0000
Modify: 2026-03-30 15:49:02.316193643 +0000
Change: 2026-03-30 15:50:23.996193126 +0000
 Birth: 2026-03-30 15:49:02.316193643 +0000