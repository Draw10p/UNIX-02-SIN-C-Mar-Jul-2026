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