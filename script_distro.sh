# Install the compiled binaries into our initramfs directory structure.
sudo mkdir -p /boot-files/initramfs
sudo make CONFIG_PREFIX=/boot-files/initramfs install
cd ..

#  CREATE THE INITRAMFS
# The initramfs is a temporary file system loaded into RAM by the bootloader.
cd /boot-files/initramfs
# Create the 'init' script: the very first process executed by the kernel (PID 1).
echo -e "#!/bin/sh\n/bin/sh" > init
sudo chmod +x init
# Remove the default symlink created by BusyBox to prevent conflicts.
sudo rm -f linuxrc
# Pack everything into a cpio archive, the format expected by the kernel.
find . | cpio -o -H newc > ../init.cpio
cd /boot-files

# CREATE THE BOOTABLE DISK IMAGE
# Generate a 50MB empty file filled with zeros to serve as our virtual drive.
dd if=/dev/zero of=boot bs=1M count=50
# Format the virtual drive with the FAT file system (required by Syslinux).
mkfs -t fat boot
# Install the Syslinux bootloader into the disk image.
syslinux boot

#  FINAL MOUNTING AND DATA TRANSFER
# We mount the virtual disk to a temporary point 'm' to copy our system files.
mkdir -p m
sudo mount boot m
sudo cp bzImage init.cpio m
sudo umount m
#Due to the security restrictions of GitHub Codespaces containers, the kernel module for loop devices is limited, preventing the mounting of the boot image file

echo "--- BUILD PROCESS FINISHED SUCCESSFULLY ---"