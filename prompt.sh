#!/bin/bash
#
# Bash prompt

black=0
red=1
green=2
orange=3
blue=4
purple=5
cyan=6
white=7

magenta=211
cyan_mono=117
yellow=222
pink=198

host=$(hostnamectl | grep -Po "^Operating System: \K[^<]+")

user_color=$(tput setaf ${black}; tput setab ${cyan_mono})
host_color=$(tput setaf ${black}; tput setab ${white})
path_color=$(tput setaf ${black}; tput setab ${cyan_mono})
git_branch_color=$(tput setaf ${black}; tput setab ${white})
prompt_color=$(tput setaf ${white})
input_color=$(tput setaf ${cyan_mono})
output_color=$(tput setaf ${white})

if [[ $host == *"Ubuntu"* ]]; then
    user_color=$(tput setaf ${black}; tput setab ${pink})
    path_color=$(tput setaf ${black}; tput setab ${pink})
    input_color=$(tput setaf ${pink})
elif [[ $host == *"Fedora"* ]]; then
    user_color=$(tput setaf ${black}; tput setab ${cyan_mono})
    path_color=$(tput setaf ${black}; tput setab ${cyan_mono})
    input_color=$(tput setaf ${cyan_mono})
fi

reset=$'\e[0m'

branch_icon=$'\u276f'

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1) /"
}

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# \u: the username of the current user.
# \h: the hostname up to the first dot (.) in the Fully-Qualified Domain Name.
# \W: the basename of the current working directory, with $HOME abbreviated with a tilde (~).

if [ "$color_prompt" = yes ]; then
    PS0='\[${output_color}\]\n'
    PS1='\n\[${path_color}\] \w \[${git_branch_color}\]$(git_branch)\[${reset}\] \[${prompt_color}\]${branch_icon}${branch_icon}${branch_icon} \[${input_color}\]'
    PS2='\[${prompt_color}\]${branch_icon} \[${input_color}\]'
else
    PS1='\u@\h:\w\$ '
fi

#Server Prompt
#PS0='\[${output_color}\]\n'
#PS1='\n\[${user_color}\] \u \[${host_color}\] \h \[${path_color}\] \w \[${reset}\] \[${prompt_color}\]${branch_icon} \[${input_color}\]'
#PS2='\[${prompt_color}\]${branch_icon} \[${input_color}\]'

unset color_prompt force_color_prompt