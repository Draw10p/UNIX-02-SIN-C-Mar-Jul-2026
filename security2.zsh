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