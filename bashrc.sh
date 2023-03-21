#!/bin/bash
#
# Configs for bashrc

if [ -f ${MY_BASH_REPO_DIR}/prompt.sh ]; then
    . ${MY_BASH_REPO_DIR}/prompt.sh
fi
if [ -f ${MY_BASH_REPO_DIR}/bash_aliases.sh ]; then
    . ${MY_BASH_REPO_DIR}/bash_aliases.sh
fi
if [ -f ${MY_BASH_REPO_DIR}/bash_functions.sh ]; then
    . ${MY_BASH_REPO_DIR}/bash_functions.sh
fi