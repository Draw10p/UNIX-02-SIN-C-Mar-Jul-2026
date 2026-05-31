#!/bin/bash

# =============================================================================
#        CONTINUING WITH THE CISCO COURSE FROM SECTION 11.1 ONWARDS
# =============================================================================

# =============================================================================
# SECTION 1: WORKING WITH FILES - COPY, MOVE, DELETE OPERATIONS
# =============================================================================

# Let's start from home directory
cd ~

# --- DD COMMAND: Copy Data Block by Block ---
# The dd command copies data at a low level (byte by byte).
# It's powerful for creating files, backups, or cloning entire disks.
# WARNING: Be very careful with dd - it can destroy data!

# Create a 50MB file full of zeros (could be used as a swap file later)
# if=/dev/zero means read from the zero device (unlimited zeros)
# of=/tmp/swapex means write output to this file
# bs=1M means each block size is 1 megabyte
# count=50 means 50 blocks, so 50MB total
dd if=/dev/zero of=/tmp/swapex bs=1M count=50

# You can clone entire disks with dd too (but be EXTREMELY careful!)
# Example: dd if=/dev/sda of=/dev/sdb  would copy entire first disk to second disk
# This overwrites everything on the destination disk!
# dd if=/dev/sda of=/dev/sdb


# --- MV COMMAND: Move Files and Rename Them ---
# The mv command moves files from one place to another.
# Interesting fact: mv can also rename files (moving them to the same directory with different name)

# Go to Documents directory to practice
cd ~/Documents

# Move a single file to a different directory
# This moves people.csv from current location to Work folder
# The file keeps the same name, just goes to different location
mv people.csv Work

# Check that it actually went there
ls Work

# Move multiple files at once to a destination
# All files go to the same place (School directory is the last argument)
# This moves: numbers.txt, letters.txt, and alpha.txt all to School folder
mv numbers.txt letters.txt alpha.txt School

# Verify they're all in the School directory
ls School

# Here's something cool: mv can rename files!
# When you "move" a file to the same directory with a different name, it's a rename
# Change the filename from animals.txt to zoo.txt
mv animals.txt zoo.txt

# Check the result
ls


# --- RM COMMAND: Delete Files Permanently ---
# WARNING: rm is permanent! Files don't go to trash/recycle bin, they're gone forever!
# Be very careful with this command, especially with wildcards!

# Go back to Documents folder
cd ~/Documents

# Delete a single file
# This permanently removes linux.txt - it's gone forever!
rm linux.txt

# Try to list it to confirm it's deleted
# You should see "No such file or directory"
ls linux.txt

# What happens if you try to delete a directory without special options?
# It gives an error - rm alone won't delete directories
rm Work

# To delete a directory and everything inside it, use the -r option (recursive)
# This is DANGEROUS because it deletes the directory AND all contents
# Be absolutely sure before using this!
rm -r Work

# Verify it's really gone
ls Work


# =============================================================================
# SECTION 2: SEARCHING TEXT - GREP AND REGULAR EXPRESSIONS
# =============================================================================

# --- GREP: Find Text Patterns in Files ---
# grep is one of the most useful Linux commands!
# It searches through files and shows you the lines that match your pattern

# Go back to Documents folder
cd ~/Documents

# First, copy the passwd file (system file with account info)
# This file contains information about all users on the system
cp /etc/passwd .

# Search for the word "sysadmin" in the passwd file
# grep will show you every line that contains "sysadmin"
grep sysadmin passwd

# When grep finds a match, it shows the whole line
# Output looks like: sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash

# --- REGULAR EXPRESSIONS: Powerful Search Patterns ---
# Regular expressions (regex) let us create flexible search patterns
# They're super powerful once you understand them!

# Basic regex symbols:
# .  = Any single character (like a wildcard for just one position)
# [ ] = A set of characters (like [abc] means a OR b OR c)
# [^] = NOT one of these characters (like [^0-9] means any non-digit)
# *  = Zero or more of the previous character
# ^  = The pattern must be at the START of the line
# $  = The pattern must be at the END of the line

# For advanced patterns, add -E option to grep:
# +  = One or more of the previous character
# ?  = Zero or one (optional)
# { } = Exact number of repetitions
# |  = OR operator (pattern1 OR pattern2)
# ( ) = Grouping patterns together


# --- PRACTICAL GREP EXAMPLES: Learning Patterns ---

# Go to Documents directory
cd ~/Documents

# SIMPLEST PATTERN: Just literal text
# Search for lines containing "sysadmin" (straightforward text search)
grep sysadmin passwd

# Search for lines with "root" (this will find multiple matches)
grep 'root' passwd

# USING ANCHORS: Beginning of line (^)
# Find lines that START with "root" (^ means beginning of line)
# Without ^, grep finds root anywhere in the line
grep '^root' /etc/passwd

# USING ANCHORS: End of line ($)
# Look at alpha-first.txt file
cat alpha-first.txt

# Find lines that END with "r" ($ means end of line)
grep 'r$' alpha-first.txt

# THE DOT (.) CHARACTER: Matches any single character
# Look at red.txt
cat red.txt

# Pattern: r..f means "r" then exactly 2 any chars then "f"
# This will match words like: reef, roof
grep 'r..f' red.txt

# Pattern: r..d means "r" then exactly 2 any chars then "d"
# Matches words like: reed, read
grep 'r..d' red.txt

# Pattern: .... means any line with at least 4 characters
grep '....' red.txt

# Pattern: r..t means "r" then exactly 2 any chars then "t"
grep 'r..t' /etc/passwd

# CHARACTER CLASSES: Using [ ]
# Let's look at profile.txt
cat profile.txt

# Find lines that have at least one digit [0-9]
grep '[0-9]' profile.txt

# Find lines with NON-digits [^0-9]
# This finds lines that contain at least one non-digit character
grep '[^0-9]' profile.txt

# Find lines with a literal dot character [.]
grep '[.]' profile.txt

# THE ASTERISK: Zero or more of previous character
# Pattern: re*d means "r" followed by zero or more "e"s then "d"
# Matches: rd, red, reed, reeed, etc.
grep 're*d' red.txt

# Pattern: r[oe]*d means "r" then zero or more (o or e) then "d"
# Matches: rd, rod, red, roed, rooed, etc.
grep 'r[oe]*d' red.txt

# Pattern: ee* means one or more "e" characters (more practical)
grep 'ee*' red.txt

# READING FROM KEYBOARD: grep can read from stdin
# If you don't specify a file, grep reads what you type
# Press Ctrl+D when finished
# Example: grep 'pattern'  (then type/paste text, then Ctrl+D)



# =============================================================================
# SECTION 3: SYSTEM ADMINISTRATION - SHUTDOWN, NETWORK, PROCESSES
# =============================================================================

# --- SHUTDOWN COMMAND: Safely Stop the Computer ---
# The shutdown command is used to safely turn off the system
# It warns all users that the system is going down
# You need admin permissions (root) to use it

# Switch to root account (need admin privileges)
su root
# Password: netlab123

# IMMEDIATE SHUTDOWN: Stop the system right now
# This tells all users "hey, system is shutting down!"
# In a virtual machine, you might need to press Enter or Ctrl+C
shutdown now

# CHECK WHAT TIME IT IS: Important for scheduling commands
# Shows current date and time in system timezone
date

# SHUTDOWN AT A SPECIFIC TIME: Schedule shutdown for later
# Use 24-hour format (like 01:51 means 1:51 AM)
shutdown 01:51

# SHUTDOWN AFTER A DELAY: Turn off after waiting some minutes
# +1 means "after 1 minute"
# The message in quotes will appear on all user terminals
shutdown +1 "Goodbye World!"

# SHUTDOWN WITH LONGER WARNING: Give users more time
# +5 means wait 5 minutes before shutdown
# Users see the message you provide
shutdown +5 "System maintenance scheduled. Please save your work."

# EXIT ROOT ACCOUNT: Go back to being a regular user
# exit


# --- NETWORK COMMANDS: ifconfig and ping ---
# These commands help us understand and troubleshoot network connections

# IFCONFIG: See Network Interface Information
# Shows all network devices connected to your computer
# This includes Ethernet, wireless, and special loopback interface
ifconfig

# When you run ifconfig, you'll see:
# eth0 = Ethernet interface (wired network connection)
# inet addr = The IP address assigned to that device
# UP = means the interface is active and running
# lo = Loopback interface (special, used for local testing)
# inet = 127.0.0.1 (the "localhost" address)

# IWCONFIG: For Wireless Network Interfaces
# Similar to ifconfig but specifically for wireless connections
iwconfig

# --- PING: Test Network Connectivity ---
# ping checks if another computer is reachable on the network
# It sends small packets and waits for responses
# This tests both that the computer is online and the network path works

# PING WITH A LIMIT: Send exactly 4 ping packets
# Without -c, ping continues forever (use Ctrl+C to stop it)
# Send 4 pings to computer at 192.168.1.2
ping -c 4 192.168.1.2

# A successful ping shows:
# - How many packets were sent and received
# - Packet loss percentage (0% = everything got through)
# - Response times in milliseconds (ms) - lower is faster

# PING TO A HOST THAT'S PROBABLY NOT REACHABLE
# This will likely fail and show "Destination Host Unreachable"
ping -c 4 192.168.1.3

# PING USING A DOMAIN NAME: Test with yahoo.com
# Using domain names instead of IP addresses
# This tests both network connectivity AND DNS (name resolution)
ping -c 4 yahoo.com

# Note: Some networks and companies block ping for security reasons
# So sometimes a host is reachable but won't respond to ping


# --- PROCESS VIEWING: The ps Command ---
# A process is a running program. The ps command shows what's running right now.
# Understanding processes is important for system administration and troubleshooting.

# Understanding Processes:
# - Every command you run creates a process
# - Processes run with the permissions of the user who started them
# - Normal users can only control their own processes
# - The root user can control processes from any user
# - There are system processes (services) running in the background

# PS BASIC: Show Processes Running in Current Terminal
# This shows only processes related to your current terminal session
ps

# Output columns mean:
# PID = Process Identifier (unique number for this process)
# TTY = Terminal where it's running
# TIME = Total CPU time used by this process
# CMD = The command that started this process

# PS WITH -e: Show ALL Processes on the System
# -e option displays every single process currently active
# This includes system services, background processes, everything
ps -e

# You'll see processes like: init, rsyslogd, cron, sshd, named, login, bash, etc.

# PS WITH -f: Full Format with Detailed Information
# -f option gives you much more detail about each process
# Combine -e and -f to see everything with full details
ps -ef

# Additional columns with -f show:
# UID = User ID (which user owns/started this process)
# PID = Process Identifier
# PPID = Parent Process ID (which process started this one)
# C = CPU usage percentage
# STIME = When the process started
# TTY = Terminal
# TIME = CPU time used
# CMD = Full command path and arguments


# =============================================================================
# SECTION 4: PACKAGE MANAGEMENT - INSTALLING SOFTWARE
# =============================================================================

# --- APT-GET: Installing and Managing Software Packages ---
# Linux packages are pre-built programs ready to install
# apt-get (advanced package tool) helps us install, update, and remove software
# Most commands need sudo because they affect the whole system

# ALWAYS UPDATE FIRST: Get the latest list of available packages
# This refreshes what software is available from repositories
sudo apt-get update

# SEARCH FOR A PACKAGE: Find software by searching
# Search for packages containing "cow" in name or description
sudo apt-cache search cow

# This will show results, like "cowsay - configurable talking cow"

# INSTALL A PACKAGE: Download and install the software
# This gets cowsay and all its dependencies (other programs it needs)
sudo apt-get install cowsay

# TRY THE NEW PROGRAM: See if installation worked
# Test the cowsay program we just installed
cowsay 'NDG Linux Unhatched'

# --- UPDATING ALL SOFTWARE: Two-Step Process ---
# To update everything to latest versions, we need two steps

# Step 1: Update the package list (what's available and has updates)
sudo apt-get update

# Step 2: Actually upgrade all packages to their newest versions
sudo apt-get upgrade

# --- REMOVING PACKAGES: Two Options ---

# REMOVE: Delete the program but keep configuration files
# If you reinstall later, it remembers your settings
sudo apt-get remove cowsay

# PURGE: Completely delete including all configuration files
# Everything is removed, as if it was never installed
sudo apt-get purge cowsay


# =============================================================================
# SECTION 5: USER MANAGEMENT - CHANGING PASSWORDS
# =============================================================================

# --- PASSWD: Change User Passwords ---
# Users can change their own password, but only root can change anyone's password
# This is for security - only the owner can change their own password

# CHANGE YOUR OWN PASSWORD: As a regular user
# This prompts you for your current password (for security)
passwd

# The system will ask:
# (current) UNIX password: netlab123
# Enter new UNIX password: [type new password - you won't see it]
# Retype new UNIX password: [type it again to confirm]
# passwd: password updated successfully

# VIEW PASSWORD INFORMATION: For a specific user
# This shows password status and expiration information
passwd -S sysadmin

# Output includes:
# sysadmin = The username
# P = Password status (P=usable, L=locked, NP=no password)
# 03/01/2015 = Date when password was last changed
# 0 = Minimum days before password can be changed again
# 99999 = Maximum days until password expires
# 7 = How many days before expiration to warn the user
# -1 = Days after expiration before account is disabled

# CHANGING ANOTHER USER'S PASSWORD: You need to be root
# Switch to root account first
su root
# Password: netlab123

# As root, change the password for user "sysadmin"
# Root doesn't need the old password, only sets a new one
passwd sysadmin

# The system will ask:
# Enter new UNIX password: [type new password]
# Retype new UNIX password: [type it again to confirm]
# passwd: password updated successfully

# EXIT ROOT ACCOUNT: Return to being a regular user
exit


# =============================================================================
# SECTION 6: REDIRECTION - SAVING OUTPUT TO FILES
# =============================================================================

# --- UNDERSTANDING REDIRECTION ---
# Linux has three data streams:
# STDIN = Input (usually keyboard)
# STDOUT = Standard output (usually screen/terminal)
# STDERR = Error messages (usually screen/terminal)
# Redirection lets us send output to files instead of the screen

# Go to Documents folder for practice
cd ~/Documents

# NORMAL OUTPUT: Command output shows on the screen
# This displays food.txt on your screen/terminal
cat food.txt

# REDIRECT TO FILE: Use > to send output to a file
# The > operator sends stdout to a file instead of the screen
# This runs cat but saves the output to newfile1.txt instead of showing it
cat food.txt > newfile1.txt

# Verify the content was saved
cat newfile1.txt

# ECHO: Print text to the terminal
# By itself, echo just shows text on screen
echo "Hello"

# CHECK FILE BEFORE CHANGE: See what's in it currently
cat newfile1.txt

# OVERWRITE FILE: Using > replaces entire file contents
# The > operator OVERWRITES - it deletes old content and writes new
# This replaces everything in newfile1.txt with "I like food."
echo "I like food." > newfile1.txt

# Check it - old content is gone, replaced with new
cat newfile1.txt

# APPEND TO FILE: Using >> adds without erasing
# The >> operator APPENDS - it adds to the end without deleting
# This adds a new line to newfile1.txt
echo "This food is good." >> newfile1.txt

# Check it - both lines are there!
cat newfile1.txt

# Important: You need write permission to redirect to a file


# =============================================================================
# SECTION 7: TEXT EDITOR - VI AND VIM
# =============================================================================

# --- VI: The Most Important Text Editor ---
# Vi (and vim - "vi improved") is available on EVERY Linux system in the world
# It's been used for decades and your skills transfer everywhere
# You can use it over slow network connections (unlike graphical editors)
# It runs entirely in the terminal (no GUI needed)

# START VI WITH A NEW FILE: Create or edit a file
vi newfile.txt

# --- VI HAS THREE MODES ---
# Understanding the modes is key to using vi!
# 1) COMMAND MODE (default) - type keys to give commands
# 2) INSERT MODE - type to add text into the file
# 3) EX MODE - advanced operations (save, quit, search)

# --- COMMAND MODE: MOVEMENT KEYS ---
# Use these keys to move around the file (think of a navigation game)
# h = move left one character
# j = move down one line
# k = move up one line  
# l = move right one character
# w = jump forward to start of next word
# b = jump backward to start of previous word
# ^ = jump to beginning of current line
# $ = jump to end of current line

# MOVEMENT WITH NUMBERS: Combine keys with numbers
# 5h = move left 5 characters
# 3w = jump forward 3 words right
# 7j = move down 7 lines

# GO TO SPECIFIC LINE:
# 5G = go to line 5 (the G command with a number)
# 1G = go to line 1 (same as gg)
# gg = go to first line (double g)
# G = go to last line (uppercase, no number)
# Ctrl+G = show current line number and file info


# --- COMMAND MODE: EDITING ACTIONS ---
# These commands let you modify text

# DELETE COMMANDS: Remove text (it goes to clipboard)
# dd = delete entire current line
# 3dd = delete 3 lines (current and next 2)
# dw = delete from cursor to end of word
# d3w = delete 3 words from cursor position
# d4h = delete 4 characters to the left

# CHANGE COMMANDS: Delete and enter insert mode
# cc = change entire line (delete it, ready to type new content)
# cw = change word (delete word, ready to type new)
# c3w = change 3 words
# c5h = change 5 characters to the left

# YANK COMMANDS: Copy text (doesn't delete)
# yy = yank (copy) entire line
# 3yy = yank 3 lines
# yw = yank one word
# y$ = yank from cursor to end of line

# PUT COMMANDS: Paste text you previously deleted/copied
# p = put (paste) after cursor position
# P = put (paste) before cursor position (uppercase)


# --- COMMAND MODE: SEARCHING TEXT ---
# Find text within your document

# SEARCH FORWARD: Look from cursor toward end of file
# / = start search forward (type the text, press Enter)
# n = go to next match
# N = go to previous match (uppercase)

# SEARCH BACKWARD: Look from cursor toward beginning of file
# ? = start search backward (type the text, press Enter)

# --- ENTERING INSERT MODE ---
# In command mode, these keys let you start typing text

# a = append (insert after cursor position)
# A = append at end of line (jump to end, then insert)
# i = insert before cursor position
# I = insert at beginning of line (jump to start, then insert)
# o = open new line after current line (insert on new line below)
# O = open new line before current line (insert on new line above)

# After using any of these, you're in INSERT MODE
# You can now type text normally
# Press Esc key to return to COMMAND MODE

# --- EX MODE: ADVANCED OPERATIONS ---
# EX mode gives access to advanced features
# Press : (colon) in command mode to enter EX mode
# You'll see a colon at the bottom of the screen

# EX MODE COMMANDS:
# :w = write (save) the file
# :w filename = save a copy with new filename
# :w! = force write (save) even if problems
# :1 = go to line 1 (or any line number)
# :e filename = edit a different file
# :q = quit (only works if no unsaved changes)
# :q! = quit without saving (force quit, loses changes)
# :wq = write and quit (save and exit)
# ZZ = write and quit in command mode (same as :wq)

# EXIT WITHOUT SAVING:
 :q! 