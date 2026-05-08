1. id # This command prints the user and group identity information (UID, GID, and groups) for the current user.
# [Darwin-Román✝] UNIX-02-SIN-C-Mar-Jul-2026 √ # id
#  uid=0(root) gid=0(root) grupos=0(root) 
2. groups # Command prints the names of all the primary and secondary groups that the current user belongs to.
3. cat /etc/passwd # command outputs the complete, unfiltered contents of the system's user account file to the terminal.
4. cat /etc/passwd | head -10  #This command outputs the first 10 lines of the /etc/passwd file, which stores system user account information.
5. touch test.txt / ls -la # My files and directories inherit the GID and UID
