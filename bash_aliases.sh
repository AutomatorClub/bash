#!/bin/bash

###########################
# Linux command shortcuts #
###########################

# navigate up one directory level quickly
alias ..='cd ..'
# navigate up to two directory levels quickly.
alias ...='cd ../..'
# allows you to clear the terminal screen with a simple command.
alias c='clear'
# allows you to view your command history quickly.
alias h='history'
# alias for the ls -al command, which shows all files and directories in a long format
alias ll='ls -al --color=auto'
# alias for the ls -al command, which shows all files and directories in a long format excluding hidden files and folders
alias la='ls -l --color=auto'
# show all files sorted by modification date, the most recent first.
alias lr='ls -ltr --color=auto'
# show all open ports and the processes using them.
alias ports='netstat -a | grep -i "listen"'
# creates a tarball of the current directory, compressed with gzip, with the filename in the format yyyymmdd.tar.gz.
alias backup='tar -zcvf $(date +%Y%m%d).tar.gz *'
# shows all directories in the PATH variable, one per line.
alias path='echo -e ${PATH//:/\\n}'
# adds a progress bar and verbose output to rsync the command, which is more efficient than cp when copying a large number of files over a network.
alias cpr='rsync --progress -avz --ignore-existing'
# extracts all files in the current directory with the .gz extension
alias extract='for i in *.gz; do tar xvf $i; done'
# shows the process tree
alias process='ps aux'
# hows your public IP address
alias publicip="echo $(curl -s ifconfig.me)"
# shows the size of the current directory and its subdirectories in human-readable format
alias du1='du -h -d 1'
# shows the current date in the format of "Day of the week, Month Day, Year"
alias today='date +"%A, %B %d, %Y"'
# shows the weather for your system location using the wttr.in service
alias weather='function _weather() { curl wttr.in/$1; }; _weather'
# shows the amount of free and used memory in the system in a human-readable format.
alias free='free -m -h'
# pretty prints JSON file
alias jsonpretty='function _jsonpretty() { python -m json.tool $1; }; _jsonpretty'
# renames all files in the current directory containing a specific string with another string
alias rename='function _rename() { for i in *$1*; do mv "$i" "${i/$1/$2}"; done }; _rename'
# encrypts a file using AES-256 encryption
alias encrypt='function _encrypt() { openssl enc -aes-256-cbc -salt -in $1 -out $2; }; _encrypt'
# decrypts a file that was encrypted using AES-256 encryption
alias decrypt='function _decrypt() { openssl enc -d -aes-256-cbc -in $1 -out $2; }; _decrypt'
# allows you to navigate to a directory and list the files in it with a single command and also show the directory tree
alias to='function _to() { cd "$@" && tree; }; _to'
# recursively searches for a specified string in all files in the current directory and its subdirectories, excluding version control directories
alias search='function _search() { grep -r --exclude-dir={.git,.svn} $1 *; }; _search'

#####################################
# Linux command reasonable defaults #
#####################################

# alias for df -h the command which shows disk usage in a human-readable format.
alias dfh='df -h'
# adds the -i flag to the cp command, which prompts for confirmation before overwriting an existing file.
alias cp='cp -i'
# adds the -i flag to the rm command, which prompts for confirmation before deleting a file.
alias rm='rm -i'
# adds the -i flag to the mv command, which prompts for confirmation before overwriting an existing file.
alias mv='mv -i'
# alias for the grep --color=auto command, which highlights the search results
alias grep='grep --color=auto'
# alias for the egrep --color=auto command, which highlights the search results
alias egrep='egrep --color=auto'
# alias for the fgrep --color=auto command, which highlights the search results
alias fgrep='fgrep --color=auto'
# will show a tree-like structure of the current directory, with directories being shown first.
alias tree='tree -C --dirsfirst'

#####################
# Git Based Aliases #
#####################

# shows the current status of the git repository
alias gst='git status'
#  shows the differences between the current working tree and the last commit
alias gdiff='git diff'
# commits the changes along with the commit message
alias gc='git commit -v'
# shows the list of branches and highlights the current branch
alias gb='git branch'
# allows you to switch between branches
alias gco='git checkout'
# adds files to the index
alias ga='git add'
# shows the difference in terms of added, deleted or modified files
alias gd='git diff --name-status'
# shows the git log in a more readable format with the graph, one-line format, decorations and for all branches
alias gitlog='git log --graph --oneline --decorate --all'
# pushes the current branch to the origin
alias gpush='git push origin $(git rev-parse --abbrev-ref HEAD)'
# pulls the changes from the origin for the current branch
alias gpull='git pull origin $(git rev-parse --abbrev-ref HEAD)'