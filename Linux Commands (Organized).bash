Linux Commands:
===============

## Checking Machine Metadata
# OS name
uname
# Full Details about OS & Machine
uname -a --> getting a full details of machine OS
uname -n --> this command displays machine name, similar to hostname
lsb_release -a
hostname

# Getting Linux Version
cat /proc/version

# Checking which Shell being used
echo $0

# Open a new Terminal
Ctrl + Alt + T
# Clear Screen
Clear
Ctrl + L
# Stop the current runnig command
Ctrl + C
# Stop all output to the screen without stop the running command.
Ctrl + S


# List CPU information
lscpu
# List CPU consumption per process
ps aux --sort -%cpu # to get CPU consumption for all running processes
ps aux --sort -%cpu | head -n 15 # to get CPU consumption for top 15 running processes
# List Disk information
lsblk, lsblk -f, lsblk -m
# Getting Machine Uptime
uptime
# Getting Last Reboot Date
last reboot
# Getting Machine IP Address
hostname -I
ip addr show

## Users Management & Handling
# Switching between Users
su - user
#e.g.:
su - nader
su - root
# Switching to root User
sudo -i

## Shutting down & Restarting Server
# Shutdown
sudo poweroff
# Restart
sudo reboot

## Checking Firewall Status
ufw status
iptables -L

## Opening Programs
# Interctive Mode
program name # this will start the program in interactive mode and the terminal will be dedicated to this program and any trial to use the terminal in any other activity will close the program
# e.g.:
pgadmin3
# Background Mode
program name & # this will start the program in the background mode and this will allow using the terminal in other activites while the program will remain running
# e.g.:
pgadmin3 &


sudo ssh service status

# Help commands (get more information about commands & its usage)
##################################################################
$ help # list of commands with little details
# man [command name]
$ man ls # gives a detailed help information
# [command name] --help
$ ls --help # gives a bief help information
# apropos [function] --> searching for commands that doing specific function
$ apropos list # searching for commands that doing listing

# Positioning
##############
# Tab --> moving a tab indentation
# ctrl+a --> going to the begining of the command line, e.g.: [$ls -ahl] this will bring the cursor to be before l is ls "this is shown here by the _ before the l in ls" [$_ls -ahl]
# ctrl+e --> going to the end of the command line, e.g.: [$ls -ahl] this will bring the cursor to be after l in ahl "this is shown here by the _ after the l in ls"[$ls -ahl_]

# Check for installed program/application location
which program_name
#e.g.:
which java

# Restart zsh session
exec zsh -l 

# Restart bash session
exec bash -l



Checking Server/Files Storage
------------------------
df -h --> disks details (for all disks)
ssm list --> list all devices, pools & volumes on a server with its details
df -h . --> current disk details (disk that being mounted to the current location)
du -sh --> get directories/files size
mount --> mapping between logical & physical structure

Checking Server Memory
-----------------------
free -m -h --> memory details
ps aux --sort -rss # to get memory consumption for all running processes
ps aux --sort -rss | head -n 15 # to get memory consumption for top 15 running processes
#or sorting by %Mem
ps aux --sort -%mem # to get memory consumption for all running processes
ps aux --sort -%mem | head -n 15 # to get memory consumption for top 15 running processes



Viewing Files/Directories Properties
-------------------------------------
ls
ls -l "ll" --> with security info
ls -l -h --> Getting result in more human way (e.g.: getting files size in MB instead of bytes)
ls -ltr --> sorting with time desc
ls | wc -l --> Count number of files in a directory
ls -R returns all files/directories insde a specific location
ls -i file_name --> view files Inode (file type .. permission .. owner id .. group id ..)

100128253

Viewing/Editing Files Contents
-------------------------------
more --> to view files in multiple pages
cat --> to view files in the terminal
view --> to view in a separate editor (read only)
vi --> to view/modify files in a seperate editor
vim --> to view/modify files in a separate editor (advacned and not installed by default).

vi commands
------------
i --> enter editing mode
esc --> exit editing mode to command mode
:w --> save the file
:wq --> save the file and quit

Files/Directories Operations
------------------------------------------
touch --> create files
cp --> copy files e.g.: cp file_name target locatoin
scp --> secure copying e.g.: scp file_name target locatoin
mv --> cut files e.g.: mv file_name target locatoin
alias --> get all command aliases
mv (in the same location) --> rename file
unzip -l --> check zipped folder contents (unzip -l deskpro-mysql-20180417.zip).
find --> to find files/directories (find location -name file/directory_name, find location -iname file/directory_name --> this to ignore case senestivity)
Examples:
----------
find -iname "filename" --> search with file name in the same location
find / -iname "filename" --> search with file name in a specific location
find /home/pat -iname "*.conf" --> search with file extention in a specific location
find /home/pat -iname "*.conf" | less  --> limit the result set
find / -type f -iname "filename" -->  --> search with file type
find / -size +50M -iname "filename" --> search with file size

Getting Users Metadata
-----------------------
cat /etc/passwd --> contains users metadata
cat /etc/passwd | grep -i post --> filter by a specific user, e.g.: postgres
cat /etc/shadow --> contains user's passwords'
whoami --> current user
who am i --> source user
id --> user full details
who --> getting all current connected users.
w --> getting what the user is doing.
su - user --> switching between users

Getting Scheduled Jobs Metadata
--------------------------------
crontab -l --> listing all scheduled jobs.

View/Change Files/Directories Permissions
------------------------------------------
ls -l --> view files/directories current permissions
chmode permission file/directory_name --> change files/directories permission
groups --> getting the current user groups.
newgrp group_name --> adding user to a specific group_name
========================================================================================================================================================
Checking Services
==================
Getting all services --> service --status-all
Getting a specific service --> service --status-all | grep ntpd
Getting MySQL service status --> service --status-all | grep mysql
Getting PostgreSQL service status --> service --status-all | grep postgres
Getting all services (with less discription) --> service --status-all | less
Getting service status, along with sub-services --> sudo systemctl status service_name, e.g.: sudo systemctl status postgresql - 12
Getting service hierarchy [parent/child processes tree] --> pstree -p process_id, e.g.: pstree -p 1115

chmod +x --> making a binary executable


kill 312 # process ID
pkill mysqld # process name


vim Operations
===============
Exit from vim without saving --> (esc -> :q!)
Saving file and exit from vim --> (esc -> :wq)

showmount -e --> get list of exported directories "needs confirmation"


cal --> calendar

# Aliasing
#==========
alias k="kubectl" # using k as an alias for kubectl
alias ls='poweroff'

etc --> directory contains all global configuration files

ssh -o PubkeyAuthentication=no nader@47.73.12.64
ssh root@47.73.12.64

yum install package_name
yum install finger

/etc/redhat-release


cat .bashrc --> user profile

usermod -G shawky nader


ps -fe

ps -fe | sort | cut | grep

top & htop

yamm install



root password --> bnmjhg


which htop
ll


sudo su -


ssh oracle@vgvtmd003hr.dc-dublin.de



Apt
The apt command is a powerful command-line tool, which works with Ubuntu's Advanced Packaging Tool (APT) performing such functions as installation of new software packages, upgrade of existing software packages, updating of the package list index, and even upgrading the entire Ubuntu system.