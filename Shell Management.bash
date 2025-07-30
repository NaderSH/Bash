
## Shell Management
# ==================
# Checking the current shell
echo $0
# Checking Installed Shells
chsh -l #valid for some Linux distributions not all
cat etc/shells #valid for all Linux distributions
#or
cd /
cd etc
cat shells
# Changing Shell
chsh -s /bin/sh #this is for "sh" shell

# Creating Your Own Commands Alias
# General syntax
alias command_alias='actual_command' 
# Example
# creating an alias for command "apt-get" with name install 
alias install='sudo apt-get -y install'







