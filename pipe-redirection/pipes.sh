#!/bin/bash

# Explanation about piping
echo "When working with \"piping\" in UNIX-like environments, we refer to the act of using the output of a command to execute another command"
echo "Piping can be achieved in more than one way, as it pretty much always is with Linux."
echo -e "In this file, we'll cover some of the ways we can pipe\n"

# Example 1: Using grep with neofetch
echo "1. Grep is a command that searches within the result of a command for a specific character. Example of neofetch without using grep: "
neofetch

echo "Now, using grep to specify output about neofetch, searching for display resolution:"
neofetch | grep "Resolution"

echo "Neofetch with parameters \"Resolution\" and \"CPU\""
# Neofetch using more than one parameter. 
neofetch | grep -e "Resolution" -e "CPU"

neofetch_output=$(neofetch | grep -e "OS")
# echo $neofetch_output
if echo "$neofetch_output" | grep "OS: macOS" ; then
    echo "You are running macOS!"
else
    echo "This is not macOS."
fi



