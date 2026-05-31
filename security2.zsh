# see the current main group

id

# see only the name of the main group

id -gn

#let's create a file

touch ~/test_grupo_heredado.txt

# see which group inherits the file

ls -la ~/test_grupo_heredado.txt

# The group is the user's primary group, as shown below:
#[Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # ls -la ~/test_grupo_heredado.txt
#-rw-r--r-- 1 root root 0 may 29 14:55 /root/test_grupo_heredado.txt

# Another way to see which group we're currently in is as follows:

echo "Grupo actual: $(id -gn)"

#We will also create a new newgrp file as follows:

touch ~/antes_de_newgrp.txt

# And we check to see if it worked or how it turned out as follows:

ls -la ~/antes_de_newgrp.txt

#[Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 X 2 # ls -la ~/antes_de_newgrp.txt
#-rw-r--r-- 1 root root 0 may 29 15:06 /root/antes_de_newgrp.txt

# We will need to install the util-linux-extra package to use the newgrp command, which is not available by 
# default in some distributions. You can install it using the following command:

apt install util-linux-extra

# Now we will create a new group called "desarrolladores" and switch to that group using the newgrp command.

groupadd desarrolladores    

# Now we will switch to the new group using the newgrp command.

newgrp desarrolladores

# After switching to the new group, we can check our current group again using the id command:

id -gn

# After switching to the new group, we can create a new file and check its group ownership as follows:

touch ~/despues_de_newgrp.txt

# And we check to see if it worked or how it turned out as follows:

ls -la ~/despues_de_newgrp.txt

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # ls -la ~/despues_de_newgrp.txt
# -rw-r--r-- 1 root desarrolladores 0 may 29 15:29 /root/despues_de_newgrp.txt

# Here is the PID for the new session:

echo $$

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # echo $$
# 21373

# Finally, we can exit the new group and return to our original group using the exit command:
exit

# Here is the PID for the original session:

echo $$

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # echo $$
# 6228

# We are rejoining the developers' group using the:

newgrp desarrolladores

# And we create a new file named:

touch ~/dentro_de_newgrp2.txt

# And we check to see if it worked as follows:

ls -la ~/dentro_de_newgrp2.txt
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # ls -la ~/dentro_de_newgrp2.txt
# -rw-r--r-- 1 root desarrolladores 0 may 29 15:43 /root/dentro_de_newgrp2.txt

# Finally, we will create a new directory named "proyecto_dev" in the home directory and inside it, 
# we will create another directory named "src" as follows:    

mkdir -p ~/proyecto_dev/src

# And we check to see if it worked as follows:

ls -la ~/

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # ls -la ~/
# total 72
# drwx------ 1 root root             4096 may 29 15:43 .
# drwxr-xr-x 1 root root             4096 may 29 14:39 ..
# -rw-r--r-- 1 root root                0 may 29 15:06 antes_de_newgrp.txt
# -rw-r--r-- 1 root root             5578 may 24 04:01 .bashrc
# -rw-r--r-- 1 root root              607 may 24 04:01 .bashrc.original
# drwxr-xr-x 3 root root             4096 may 29 14:39 .cache
# drwx------ 3 root root             4096 may 29 14:39 .config
# drwx------ 3 root root             4096 may 29 14:40 .copilot
# -rw-r--r-- 1 root desarrolladores     0 may 29 15:43 dentro_de_newgrp2.txt
# -rw-r--r-- 1 root root                0 may 29 15:38 dentro_de_newgrp.txt
# -rw-r--r-- 1 root desarrolladores     0 may 29 15:29 despues_de_newgrp.txt
# lrwxrwxrwx 1 root root               47 may 29 14:39 .docker -> /workspaces/.codespaces/.persistedshare/.docker
# drwxr-xr-x 3 root root             4096 may 29 14:39 .dotnet
# drwx------ 4 root root             4096 may 29 14:40 .local
# -rw-r--r-- 1 root root              132 may 15 11:37 .profile
# drwxr-xr-x 3 root desarrolladores  4096 may 29 15:43 proyecto_dev
# drwx------ 2 root root             4096 may 29 14:38 .ssh
# -rw-r--r-- 1 root root                0 may 
# drwxr-xr-x 5 root root             4096 may 29 14:39 .vscode-remote
# -rw------- 1 root root              155 may 29 15:43 .zsh_history
# -rw-r--r-- 1 root root            10973 may 29 14:39 .zshrc

# Finally, we will check the PID of the current shell as follows:
echo "PID del shell actual: $$"

#[Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # echo "PID del shell actual: $$"
#PID del shell actual: 28057

# We will switch to the new group again using the command.
newgrp desarrolladores

# And we check the PID again to see if it has changed or not as follows:
echo "PID dentro de newgrp: $$"

#[Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # echo "PID dentro de newgrp: $$"
#PID dentro de newgrp: 32084

# We will need to install the sudo package if it is not already installed on our system, as it is required to use the gpasswd command to set a password for the group. You can install it using the following command:
apt update && apt install -y sudo

# Next command help us create a password-protected group called "grupo_restringido" and we will set a password for it.
sudo groupadd grupo_restringido

# Now we will set a password for the "grupo_restringido" group using the following command:
sudo gpasswd grupo_restringido

# After setting the password, we can switch to the "grupo_restringido" group using the newgrp command and entering the password when prompted:
newgrp grupo_restringido

# If the password is correct, we will switch to the "grupo_restringido" group and we can check our current group again using the id command:
id -gn

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # newgrp grupo_restringido
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id -gn
# grupo_restringido

# But if you want to know whether this group has a password, run the following command:
cat /etc/gshadow | grep grupo_restringido

# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 X 1 # cat /etc/gshadow | grep grupo_restringido
# grupo_restringido:$y$j9T$fNZpXkrj7Fdv6/Vh2Dt8T1$/vLTk89atZ5BykME9XdlthWEnBzxoUQCdk9qm5mNK5C::
# The output shows that the "grupo_restringido" group has a password set, as indicated by the presence 
# of the hashed password in the second field. If there was no password set, this field would be empty.