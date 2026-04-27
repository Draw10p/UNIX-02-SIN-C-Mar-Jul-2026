ls -a #lists all files and folders in the current directory, including hidden ones that start with a dot
@Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -a
.                    doc_cifrado_y_firmado.txt                        keyla_doc_cifrado_y_firmado.txt
..                   doc_firmado_y_firmado_descifrado_y_validado.txt  keyla_doc_no_cifrado.txt
.git                 doc_no_cifrado.txt                               keyla_doc_no_cifrado_firmado.txt
.gitignore           doc_no_cifrado_firmado.txt                       keyla_doc_no_cifrado_firmado_binario.txt
LICENSE              doc_no_cifrado_firmado_binario.txt               keyla_firma_separada_doc_no_cifrado.sig
README.md            firma_separada_doc_no_cifrado.sig                keyla_llave.publica.asc
boot_exploration.sh  gnupg_script.sh                                  mi_llave_publica.asc
doc_cifrado.txt      keyla_doc_cifrado.txt
#----------------------------------------------------------------------------------------------------
ls - all # It does the same thing as the previous command, but the command line is longer.
.                    doc_cifrado_y_firmado.txt                        keyla_doc_cifrado_y_firmado.txt
..                   doc_firmado_y_firmado_descifrado_y_validado.txt  keyla_doc_no_cifrado.txt
.git                 doc_no_cifrado.txt                               keyla_doc_no_cifrado_firmado.txt
.gitignore           doc_no_cifrado_firmado.txt                       keyla_doc_no_cifrado_firmado_binario.txt
LICENSE              doc_no_cifrado_firmado_binario.txt               keyla_firma_separada_doc_no_cifrado.sig
README.md            firma_separada_doc_no_cifrado.sig                keyla_llave.publica.asc
boot_exploration.sh  gnupg_script.sh                                  mi_llave_publica.asc
doc_cifrado.txt      keyla_doc_cifrado.txt
#----------------------------------------------------------------------------------------------------
ls -l -a -h #lists all files, including hidden ones, in a detailed view with human-readable sizes.
total 128K
drwxrwxrwx+ 3 codespace root      4.0K Apr 17 14:12 .
drwxr-xrwx+ 5 codespace root      4.0K Apr 17 14:08 ..
drwxrwxrwx+ 8 codespace root      4.0K Apr 17 14:26 .git
-rw-rw-rw-  1 codespace root      4.6K Apr 17 14:07 .gitignore
-rw-rw-rw-  1 codespace root       34K Apr 17 14:07 LICENSE
-rw-rw-rw-  1 codespace root        53 Apr 17 14:07 README.md
-rw-rw-rw-  1 codespace codespace 2.0K Apr 17 14:27 boot_exploration.sh
-rw-rw-rw-  1 codespace root       646 Apr 17 14:07 doc_cifrado.txt
-rw-rw-rw-  1 codespace root      1.3K Apr 17 14:07 doc_cifrado_y_firmado.txt
-rw-rw-rw-  1 codespace root        24 Apr 17 14:07 doc_firmado_y_firmado_descifrado_y_validado.txt
-rw-rw-rw-  1 codespace root        32 Apr 17 14:07 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root       914 Apr 17 14:07 doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root       646 Apr 17 14:07 doc_no_cifrado_firmado_binario.txt
-rw-rw-rw-  1 codespace root       566 Apr 17 14:07 firma_separada_doc_no_cifrado.sig
-rw-rw-rw-  1 codespace root      3.5K Apr 17 14:07 gnupg_script.sh
-rw-rw-rw-  1 codespace root       640 Apr 17 14:07 keyla_doc_cifrado.txt
-rw-rw-rw-  1 codespace root      1.2K Apr 17 14:07 keyla_doc_cifrado_y_firmado.txt
-rw-rw-rw-  1 codespace root        24 Apr 17 14:07 keyla_doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root       906 Apr 17 14:07 keyla_doc_no_cifrado_firmado.txt
-rw-rw-rw-  1 codespace root       638 Apr 17 14:07 keyla_doc_no_cifrado_firmado_binario.txt
-rw-rw-rw-  1 codespace root       566 Apr 17 14:07 keyla_firma_separada_doc_no_cifrado.sig
-rw-rw-rw-  1 codespace root      3.2K Apr 17 14:07 keyla_llave.publica.asc
-rw-rw-rw-  1 codespace root      3.2K Apr 17 14:07 mi_llave_publica.asc
#----------------------------------------------------------------------------------------------------
ls -l -ah # It does the same thing as the previous one but is easier to write
#----------------------------------------------------------------------------------------------------
ls -lah # It does the same thing as the previous one but is easier to write
#----------------------------------------------------------------------------------------------------
mkdir -- -rf # Creates a directory literally named (-rf), using (--) to prevent the system from misinterpreting it as an option.
#----------------------------------------------------------------------------------------------------
rmdir -- -rf # Removes an empty directory literally named (-rf), using (--) to prevent the system from misinterpreting it as a command option.
#----------------------------------------------------------------------------------------------------
ls --help # Displays the built-in help manual and a list of all available options for the ls command.
#----------------------------------------------------------------------------------------------------
man ls # Opens the full system manual page and detailed documentation for the ls command.
# “/” searches for a file within this directory
# “n” moves forward
# “N” moves backward
# “Q” exits this directory
#----------------------------------------------------------------------------------------------------
 man git-clone # Do the same from the previous one but open the full system manual page and documentation for the git clone command.
 #--depth <depth>
      #Create a shallow clone with a history truncated to the specified number of commits. Implies
      #--single-branch unless --no-single-branch is given to fetch the histories near the tips of all
      #branches. If you want to clone submodules shallowly, also pass --shallow-submodules.
#----------------------------------------------------------------------------------------------------
ls -l #lists files and directories in a detailed long format, showing permissions, ownership, size, and timestamps.
# -rw-rw-rw- 1 codespace root      34523 Apr 17 14:07 LICENSE
# “-” indicates a regular file. If ‘d’ appears, it is a directory, and if “|” appears, it is a symbolic link
# “rwx” user permissions
# “rw-” means it has no execute permissions
# “r-x” group permissions
# “r--” permissions for others
#----------------------------------------------------------------------------------------------------
touch script.sh #creates a new empty file named script.sh or updates its timestamp if it already exists.
chmod +x script.sh #makes the file script.sh executable so it can run as a program.
#-rwxrwxrwx 1 codespace codespace     0 Apr 17 14:57 script.sh
#----------------------------------------------------------------------------------------------------
touch secreto.txt #creates a new empty file named secreto.txt or updates its timestamp if it already exists.
chmod o-r secreto.txt #removes read permission for "others" from the file secreto.txt.
#-rw-rw--w- 1 codespace codespace     0 Apr 17 14:59 secreto.txt
#----------------------------------------------------------------------------------------------------
touch privado #creates a new empty file named privado or updates its timestamp if it already exists.
chmod u+rw,go-rwx privado #grants the owner read and write permissions while removing all access for the group and others on the file privado.
#-rw------- 1 codespace codespace     0 Apr 17 15:01 privado
#----------------------------------------------------------------------------------------------------
#RUNNING COMMAND AS SUPER USER DO (SUDO)
#----------------------------------------------------------------------------------------------------
sudo echo "hola" > /etc/archivo_protegido #The command fails because sudo only elevates the echo command, while the file redirection (>) is executed by your regular user, who lacks permission to write to the protected /etc/ directory.
# bash: /etc/archivo_protegido: Permission denied
#----------------------------------------------------------------------------------------------------
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null # This is safely writes "hola" to a protected file using root privileges, while discarding the screen output to keep the terminal clean.
echo "hola" | sudo tee /etc/archivo_protegido # This uses root privileges to safely write "hola" into a protected file while simultaneously displaying the text on your screen.
# cat /etc/archivo_protegido
# hola
#----------------------------------------------------------------------------------------------------
sudo sh -c 'echo "chao" >> /etc/archivo_protegido' # Uses a root-privileged shell to append "chao" to a protected file, successfully bypassing standard redirection permission errors. 
# cat /etc/archivo_protegido
# hola
# chao
#----------------------------------------------------------------------------------------------------
sudo -i # Opens an interactive login shell as the root user, fully loading root's environment variables and placing you in the root home directory.
#----------------------------------------------------------------------------------------------------
sudo su # Switches you to the root user account and opens a root shell, but typically retains your current environment variables instead of fully loading the root profile.
#----------------------------------------------------------------------------------------------------
echo "$HOME" # Command prints the actual path of your home directory because the double quotes allow the shell to evaluate and expand the variable.
# /home/codespace
echo '$HOME' # This prints the literal text "$HOME" to the screen because the single quotes prevent the shell from evaluating it as a variable.
# $HOME
#----------------------------------------------------------------------------------------------------
echo '#!/bin/sh' > hola.sh # Creates or overwrites the file hola.sh and writes the shebang line #!/bin/sh into it, setting it up as a standard shell script.
echo 'echo " Keyla no pone atención"' >> hola.sh # Appends the literal command echo " Keyla no pone atención" to the end of the file hola.sh without overwriting its existing content.
cat hola.sh # Reads and displays the entire content of the file
./hola.sh # it executes the hola.sh script located in your current working directory as a new child process but create a error.
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ./hola.sh
# bash: ./hola.sh: Permission denied
#----------------------------------------------------------------------------------------------------
ls -l hola.sh # Checks the initial detailed properties of the file, showing that it likely only has read and write permissions
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -l hola.sh
# -rw-rw-rw- 1 codespace codespace 42 Apr 20 15:05 hola.sh
chmod +x hola.sh # Modifies the file's permissions, adding the execute (x) flag so the system recognizes it as a runnable program.
ls -l hola.sh # This verifies the change, confirming that the execute permissions have been successfully applied (looking something like
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -l hola.sh
# -rwxrwxrwx 1 codespace codespace 42 Apr 20 15:05 hola.sh
./hola.sh # Executes the script located in your current directory. Based on the contents you added previously
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ./hola.sh
# Keyla no pone atención
#----------------------------------------------------------------------------------------------------
ls /etc # Lists the contents of the /etc configuration directory. Does not need sudo
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls /etc
ODBCDataSources         cron.d          gdb          issue.net      magic           pam.conf    resolv.conf  sudo_logsrvd.conf
PackageKit              cron.daily      gitconfig    kernel         magic.mime      pam.d       rmt          sudoers
X11                     cron.weekly     gnutls       ld.so.cache    mailcap         passwd      rpc          sudoers.d
adduser.conf            csh.login       gprofng.rc   ld.so.conf     mailcap.order   passwd-     rvmrc        sysctl.conf
alternatives            dbus-1          groff        ld.so.conf.d   manpath.config  perl        security     sysctl.d
apache2                 debconf.conf    group        legal          mime.types      polkit-1    selinux      systemd
apparmor.d              debian_version  group-       libaudit.conf  mke2fs.conf     profile     services     terminfo
apt                     debuginfod      gshadow      libnl-3        modules-load.d  profile.d   sgml         timezone
archivo_protegido       default         gshadow-     lighttpd       mtab            protocols   shadow       tmpfiles.d
bash.bashrc             deluser.conf    gss          locale.alias   mysql           python3     shadow-      ucf.conf
bash_completion         dpkg            host.conf    locale.conf    nanorc          python3.12  shells       ufw
bash_completion.d       e2scrub.conf    hostname     locale.gen     netconfig       rc0.d       skel         update-motd.d
bindresvport.blacklist  emacs           hosts        localtime      networks        rc1.d       ssh          vconsole.conf
binfmt.d                environment     hosts.allow  logcheck       nftables.conf   rc2.d       ssl          vim
ca-certificates         ethertypes      hosts.deny   login.defs     nsswitch.conf   rc3.d       subgid       wgetrc
ca-certificates.conf    fish            init.d       logrotate.d    odbc.ini        rc4.d       subgid-      xattr.conf
cloud                   fonts           inputrc      lsb-release    odbcinst.ini    rc5.d       subuid       xdg
credstore               fstab           iproute2     lynx           opt             rc6.d       subuid-      xml
credstore.encrypted     gai.conf        issue        machine-id     os-release      rcS.d       sudo.conf    zsh
touch /etc/prueba.txt # Attempts to create an empty file in the /etc directory. Requires sudo (regular users do not have write permissions there).
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ cd /etc
# @Draw10p ➜ /etc $ ls
ODBCDataSources         cron.daily      gnutls       ld.so.conf     manpath.config  polkit-1     selinux            terminfo
PackageKit              cron.weekly     gprofng.rc   ld.so.conf.d   mime.types      profile      services           timezone
X11                     csh.login       groff        legal          mke2fs.conf     profile.d    sgml               tmpfiles.d
adduser.conf            dbus-1          group        libaudit.conf  modules-load.d  protocols    shadow             ucf.conf
alternatives            debconf.conf    group-       libnl-3        mtab            (#prueba.txt)  shadow-            ufw
apache2                 debian_version  gshadow      lighttpd       mysql           python3      shells             update-motd.d
apparmor.d              debuginfod      gshadow-     locale.alias   nanorc          python3.12   skel               vconsole.conf
apt                     default         gss          locale.conf    netconfig       rc0.d        ssh                vim
archivo_protegido       deluser.conf    host.conf    locale.gen     networks        rc1.d        ssl                wgetrc
bash.bashrc             dpkg            hostname     localtime      nftables.conf   rc2.d        subgid             xattr.conf
bash_completion         e2scrub.conf    hosts        logcheck       nsswitch.conf   rc3.d        subgid-            xdg
bash_completion.d       emacs           hosts.allow  login.defs     odbc.ini        rc4.d        subuid             xml
bindresvport.blacklist  environment     hosts.deny   logrotate.d    odbcinst.ini    rc5.d        subuid-            zsh
binfmt.d                ethertypes      init.d       lsb-release    opt             rc6.d        sudo.conf
ca-certificates         fish            inputrc      lynx           os-release      rcS.d        sudo_logsrvd.conf
ca-certificates.conf    fonts           iproute2     machine-id     pam.conf        resolv.conf  sudoers
cloud                   fstab           issue        magic          pam.d           rmt          sudoers.d
credstore               gai.conf        issue.net    magic.mime     passwd          rpc          sysctl.conf
credstore.encrypted     gdb             kernel       mailcap        passwd-         rvmrc        sysctl.d
cron.d                  gitconfig       ld.so.cache  mailcap.order  perl            security     systemd
mkdir ~/mi_carpeta # Creates a new folder in your home directory (/home/your_username). Does not need sudo
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ cd ~/mi_carpeta
# @Draw10p ➜ ~/mi_carpeta $ 
# Another way to check if it worked:
# @Draw10p ➜ ~/mi_carpeta $ ls -ld ~/mi_carpeta
# drwxr-xr-x 2 codespace codespace 4096 Apr 20 15:25 /home/codespace/mi_carpeta
apt install cowsay # Installs the cowsay program on the system. Requires sudo (installing or modifying software packages affects the entire system and requires root privileges).
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# E: Unable to locate package cowsay
#----------------------------------------------------------------------------------------------------
touch prueba.txt # Creates a new empty file named prueba.txt
chmod 600 prueba.txt # Grants read and write permissions only to the owner
ls -l prueba.txt # Displays detailed file information to verify the 600 permissions
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -l prueba.txt
# -rw------- 1 codespace codespace 0 Apr 20 15:36 prueba.txt
chmod 755 prueba.txt # Grants read, write, and execute permissions to the owner, and read/execute permissions to everyone else.
ls -l prueba.txt  # Displays detailed file information again to verify the new 755 permissions
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -l prueba.txt
# -rwxr-xr-x 1 codespace codespace 0 Apr 20 15:36 prueba.txt
#----------------------------------------------------------------------------------------------------
umask #This command sets or displays the default permission mask, determining which read, write, and execute permissions are automatically denied when new files or directories are created.
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ umask 
# 0022 
sudo apt install acl # This command uses root privileges to download and install the Access Control List (ACL) utility via the apt package manager on Debian-based Linux systems.
sudo chown -R $(whoami) . # Command uses root privileges to recursively change the ownership of the current directory and all of its contents to your currently logged-in user.
sudo setfacl -bnR . # This command uses root privileges to recursively remove all extended ACL entries from the current directory and its contents without recalculating the effective rights mask.

# We don't use AI in this case because it might confuse you and lead to an infinite loop where you don't find any results. Therefore, it's best to use forums or start your research from scratch, 
#since you can always find answers more broadly—after all, this problem probably hasn't just happened to you here. 

# GitHub Issues are a built-in tracking system used to report bugs, request features, and manage project tasks. They help programmers by centralizing discussions, assigning work, tracking progress, 
#and streamlining collaboration within a repository to keep software development highly organized and efficient.
#----------------------------------------------------------------------------------------------------
umask 027 #Execute umask 027 to set the default permission mask so that newly created files automatically default to -rw-r----- and directories to drwxr-x---, denying group write access and all access for others.
# That subtracts the mask values from the system's default base permissions of 666 for files and 777 for directories, mathematically resulting in 640 (-rw-r-----) for archivo2 and 750 (drwxr-x---) for directorio2.
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ umask 027
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ touch archivo2
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ mkdir directorio2
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -l
# total 136
#-rw-rw-rw- 1 codespace root      34523 Apr 27 14:10 LICENSE
#-rw-rw-rw- 1 codespace root         53 Apr 27 14:10 README.md
#-rw-rw-rw- 1 codespace codespace     0 Apr 27 14:51 archivo1
-rw-r----- 1 codespace codespace     0 Apr 27 15:19 archivo2
#-rw-rw-rw- 1 codespace root      20437 Apr 27 15:12 boot_exploration.sh
# drwxrwxrwx 2 codespace codespace  4096 Apr 27 14:51 directorio1
drwxr-x--- 2 codespace codespace  4096 Apr 27 15:19 directorio2
#----------------------------------------------------------------------------------------------------
umask 077 # to set the default permission mask so that newly created files automatically default to -rw------- and directories to drwx------, denying all access to groups and others.
# The subtracts the mask values from the system's default base permissions of 666 for files and 777 for directories, mathematically resulting in 600 (-rw-------) for secreto.txt and 700 (drwx------) for the privado directory.
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ umask 077
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ touch secreto.txt
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ mkdir privado
# @Draw10p ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (boot_exploration) $ ls -l
# total 144
# -rw-rw-rw- 1 codespace root       3187 Apr 27 14:10 mi_llave_publica.asc
drwx------ 2 codespace codespace  4096 Apr 27 15:27 privado
# -rwxrwxrwx 1 codespace root          0 Apr 27 14:10 prueba.txt
# -rwxrwxrwx 1 codespace root          0 Apr 27 14:10 script.sh
-rw------- 1 codespace codespace     0 Apr 27 15:26 secreto.txt
#----------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------
