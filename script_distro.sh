#  INSTALL DEPENDENCIES
# We install essential build tools (gcc, make), kernel dependencies (flex, bison, libssl),
# and emulation tools like QEMU and Syslinux.
sudo apt update
sudo apt install -y git vim make gcc libncurses-dev flex bison bc \
cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

#  COMPILE THE LINUX KERNEL
# We clone the source code using --depth 1 to fetch only the latest commit.
git clone --depth 1 https://github.com/torvalds/linux.git
cd linux
# Create a default configuration file for the x86_64 architecture.
make defconfig
# Start the build process using all available CPU cores (-j$(nproc)).
make -j$(nproc)
# Create a workspace directory and copy the generated kernel image (bzImage).
sudo mkdir -p /boot-files
sudo cp arch/x86/boot/bzImage /boot-files/
cd ..

#  COMPILE BUSYBOX
# BusyBox provides the standard Unix utilities (ls, sh, cat, etc.) in a single binary.
git clone --depth 1 https://git.busybox.net/busybox
cd busybox
# NOTE: BusyBox must be configured as a "Static Binary" in menuconfig to avoid 
# dependencies on external shared libraries during boot.
make -j$(nproc)
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