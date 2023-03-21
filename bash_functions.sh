#!/bin/bash
#
# Bash functions

# System info
get_os () { hostnamectl | grep -Po "Operating System: \K[^<]+"; }

# A function that searches for a specific string in a file and outputs the line numbers where it appears
# Example : 
# Result  :
grepnum() { grep -n $1 $2; }
