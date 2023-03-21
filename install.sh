#!/bin/bash
#

echo "Start custom bash configuration setup"

MY_BASH_REPO_DIR="~/.mybash"

grep -qxF "export MY_BASH_REPO_DIR=${MY_BASH_REPO_DIR}" ~/.bashrc || echo "export MY_BASH_REPO_DIR=${MY_BASH_REPO_DIR}" >> ~/.bashrc

# Add custom bashrc to ~/.bashrc
grep -qxF '. ${MY_BASH_REPO_DIR}/bashrc.sh' ~/.bashrc || echo '. ${MY_BASH_REPO_DIR}/bashrc.sh' >> ~/.bashrc

# Reload bash
echo "Type 'bash' to load the new configuration in current session"
