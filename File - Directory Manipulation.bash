
## File/Directory Manipulation
# ===================
# Create an empty text file called myFile
touch myFile
# Rename myFile to myFirstFile
mv myFile myFirstFile
# View the contents of a file
cat myFirstFile
# Write inside a File


# View the content of a file with pager (one screenful at a time)
less myFirstFile
# View the first several lines of a file
head myFirstFile
# View the last several lines of a file
tail myFirstFile
# Edit a file
vi myFirstFile
# View what files are in your current working directory
ls
# View files with details (permission, size, last modified date)
ls -l
# View files with details (permission, size, last modified date) in readable format
ls -lh
# View hidden files
ls -a
# View hidden files with details
ls -a -lh
# View Zipped filed details
unzip -l 
e.g.: unzip -l deskpro-mysql-20180417.zip
# Create an empty directory called myFirstDirectory
mkdir myFirstDirectory
# Create multi path directory (creates two directories, src and myFirstDirectory)
mkdir -p src/myFirstDirectory
# Move the file into the directory
mv myFirstFile myFirstDirectory/
# Delete a file
rm myFirstFile
# Delete an empty directory
rmdir myFirstDirectory
# Delete a non-empty directory (i.e. contains files and/or other directories)
rm -rf myFirstDirectory
# View directory & its contents size
ls -s # normal view
ls -sh # readable view
# Recursive View
ls -R
ls-lR
tree
