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
