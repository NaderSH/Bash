# Bash commands & special charachters
# command --> description --> example --> explaination "if required"
touch # --> create a file --> touch test.txt --> create a text file --> touch script.sql --> create a sql file
mkdir # --> create a directory
file # --> used to determine the type of a file --> file bash.sh
grep # --> used to filter result from pipeline --> env | grep PATH
cp # --> copy files and directories --> cp test_create_database.sql /Users/sharara/Desktop
scp # --> secure copy --> scp test_create_database.sql /Users/sharara/Desktop
rm # --> remove files --> rm test_create_database.sql
rmdir # --> remove "empty" directory "rarely used" --> rmdir test_shell
rm -r # --> remove directory contains files or empty directory --> rm -r testshell
* # --> special charachter select all items "similar to * in SQL" --> cp ~/Desktop/test_files/* ~/Desktop/test_files_2 --> this will copy all files inside test_files to testfiles_2
# \  --> "\" is a special charachter used escape charachter to turn a variable into a string value, used usually in a string with double coats " " --> echo "Printing /$PATH" --> Printing $PATH --> another way to do that is with single quotes --> echo 'Printing $PATH' --> Printing $PATH
$ # --> special charachter used before variables --> $PATH --> system variable PATH --> test='I am testing!!' --> echo $test --> I am testing --> this is a user defined variable
&& # --> special charachter used to execute the next command "comming after &&" in case of the success of the previous one "coming before &&" --> echo "Creating backup directory .." && mkdir ~/backup --> in this example the command "mkdir ~/backup" will be executed ONLY if command [echo "Creating backup directory .."] executed successfully "return code = 0"
|| # --> special charachter used to execute the next command "commign after ||" in case of the failure "or case of return code <> 0 to be more accurate" of the previous command "commad comming before ||" --> echo "Creating backup directory" && mkdir ~/backup || echo "Something wroing occurred while creating backup directory!!" --> the last part "Something wrong .. ect" will not be executed unless the outcome code of mkdir ~/backup return a return code different from 0 "success code".
$? # special charachter returns the return code of the last command executed --> echo "test" --> $? --> 0 --> ddd --> 127 "command not found"
> # --> redirect the command output into a file with overwrite behaviour when redirecting to an existing file --> ls -ahl > test_redirect.txt
>> # --> redirect the command output into a file with append behaviour when redirecting to an existing file --> ls -ahl > test_redirect.txt --> ls >> test_redirect.txt
< # --> redirect the output of a file to a command --> ls -ahl > test_redirect.txt --> sort < test_redirect --> the output is a sorted output of ls -ahl

