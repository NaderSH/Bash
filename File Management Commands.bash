

# Directory navigation
# =====================
pwd               # Get the full path of the current working directory.
cd -              # Navigate to the last directory you were working in.
cd ~              # Navigate to the current user's home directory.
cd                # Navigate to the current user's home directory.
cd .              # Navigate to the current directory.
cd ..             # Navigate to the parent directory.

# Listing files inside a directory
# =================================
ls -ltrhF         # The Ideal Command (Use This One) [Getting files list with readable size, file type & sorted by 
                  # date]
ls | wc -l        # Count number of files in a directory                  
ls -lhF           # Getting files list with readable size, file type.
ls -l             # List the files and directories in the current directory in long (table) format.
ls -ld dir-name   # List information about the directory dir-name instead of its contents.
ls -a             # List all the files including the hidden ones (files start with a . are hidden files).
ls -F             # Appends a symbol at the end of a file name to indicate its type (* means executable, / means
                  # directory, @ means symbolic link, = means socket, | means named pipe, > means door).
ls -lF            # combination of -l & -F 
ls -lt            # List the files sorted by last modified time with most recently modified files 
ls -lh            # List the file sizes in human readable format.
ls -lR            # Shows all subdirectories recursively.
tree              # Will generate a tree representation of the file system starting from the current directory.
unzip -l          # View Zipped filed details (e.g.: unzip -l deskpro-mysql-20180417.zip).

# File/directory create, copy and remove
# =======================================
cp source destination    # Copying file from a directory to another
cp -p source destination # preserves the original attributes of file while copying like owner, permissions, etc
cp -R source_dir         # copy source directory to specified destination recursively.
mv file1 file2           # there is no rename command in Linux, Hence mv moves/renames the file1 to file2.
mv dir destination       # Move directory inside another directory "mv dev /dbcons/nader/mysql_mig/"
rm -i filename           # Asks you before every file removal for confirmation "recommended for new users".
rm -f filename           # Will remove the file without confirmaiton.
rm -R dir-name           # Will remove the directory dir-name recursively "the only way to remove directory".
rm -rf dir-name          # Will remove the directory recursively, ignoring non-existent files and will never 
                         # prompt for anything.
rmdir dir-name           # Will remove the directory if it's empty. This can only remove empty directories.
mkdir dir-name           # Create a directory dir-name.
mkdir -p dir-name/dir-name # Create a directory hierarchy. Create parent directories as needed, if they don't
                           # exist. You can specify multiple directories.
touch filename           # Create a file filename, if it doesn't exist, otherwise change the timestamp of the
                         # file to current time.

# File/directory permissions and groups
# ======================================
chmod <specification> filename   # Change the file permissions. Specifications = u user, g group, o other, + add
                                 # permission, - remove, r read, w write,x execute.
chmod -R <specification> dirname # Change the permissions of a directory recursively. To change permission of a 
                                 # directory and everything within that directory, use this command.
chmod go=+r myfile               # Add read permission for the owner and the group to "myfile".
chmod a +rwx myfile              # Allow all users to read, write or execute "myfile".
chmod go -r myfile               # Remove read permission from the group and others to "myfile".
chown owner1 filename            # Change ownership of a file to user "owner1".
chgrp grp_owner filename         # Change primary group ownership of file filename to group "grp_owner".
chgrp -R grp_owner dir-name      # Change primary group ownership of directory dir-name to group "grp_owner"
                                 # recursively. 








