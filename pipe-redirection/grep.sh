#!/bin/bash

# Explanation about piping
echo -e "\nWhen working with \"piping\" in UNIX-like environments, we refer to the act of using the output of a command to execute another command"
echo "Piping can be achieved in more than one way, as it pretty much always is with Linux."
echo -e "In this file, we'll cover some of the ways we can pipe\n"

# Example 1: Using grep with neofetch
echo "1. Grep is a command that searches within the result of a command for a specific character or string. Example of neofetch without using grep: "
neofetch

echo "Now, using grep to specify output about neofetch, searching for display resolution:"
neofetch | grep "Resolution"


echo "Neofetch with two parameters: \"Resolution\" and \"CPU\""
# Neofetch using more than one parameter. 
neofetch | grep -e "Resolution" -e "CPU"


echo "Now, we're gonna run neofetch and capture the result of the line containing \"OS\" and determine whether or not we are running macOS"
neofetch_output=$(neofetch | grep -e "OS") # We don't use "$" in bash when assigning a value to a variable

if echo "$neofetch_output" | grep "macOS" ; then
    echo "You are running macOS!"
else
    echo "This is not macOS."
fi

string_one="My name is Tiago, I am 23 years old."
if grep -q "Tiago" <<< "$string_one"; then
    echo "Found Tiago!"
else
    echo "Tiago not found.."
fi



