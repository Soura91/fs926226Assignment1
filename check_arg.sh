#!/bin/bash
firstarg=$1
# flag for interactive mode
iflag=false
# flag for non interactive mode
nflag=false
flag=false
#flag  when user enters only usernames but no mode
uflag=false
#Checks if the user gives no arguments or options
if [[ $# -eq 0 ]]; then
echo "Please provide correct arguments and options"
echo "Usage: ./check_arg.sh[-i][-n][USERS]"
echo "Options(Optional):-i or -n for interactive or non-interactive mode"
echo "Arguments :list of usernames"
echo "Every username must match this regular expression: '^[a-z][a-z0-9_]*$' "
exit 0
else
if [[ $firstarg = "-i" ]]; then
iflag=true
elif [[ $firstarg = "-n" ]]; then
nflag=true
else
iflag=false
nflag=false
#Checks if the user gives only username(no mode specified by the user) 
for i in "$@"
do
if [[ $i =~ ^[a-z][a-z0-9_]*$ ]]; then
uflag=true
else
uflag=false
fi
done
fi
fi
#Checks when the user gives mode as well as username
for i in "${@:2}"
do
if [[ $i =~ ^[a-z][a-z0-9_]*$ ]]; then
flag=true
else
flag=false
break
fi
done
#Final check based on the flags set
if [[ $flag = true && $iflag = true && $uflag=false ]]; then
echo "Options and arguments ok "
echo "Running in interactive mode"
exit 0
elif [[ $flag = true && $nflag = true && $uflag=false ]]; then
echo "Options and arguments ok"
echo "Running in non-interactive mode"
exit 0
elif [[ $uflag = true ]]; then
echo "Options and Arguments ok"
echo "Running in Interactive mode"
exit 0
else
echo "ERR:option after an argument or wrong argument or wrong option 2: "$2
echo "Please provide correct arguments and options"
echo "Arguments list of usernames"
echo "Every username must match this regular expression" '^[a-z][a-z0-9_]*$ '""
exit 1
fi
