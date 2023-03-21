This Linux Shell Enhancement Project aims to improve the user experience of the Linux command-line interface by introducing new features such as customized user prompts, command aliases, and functions.

The project will start by designing and implementing a customizable user prompt that provides users with relevant information and a more user-friendly interface. The user prompt will display information such as the current directory, hostname, username, and other relevant details. This will make it easier for users to keep track of their location and context within the shell environment.

The project will also introduce command aliases and functions to streamline and simplify the execution of commonly used commands. These aliases and functions will enable users to create shortcuts for complex or frequently used commands, reducing the amount of typing required and improving productivity. For instance, a user could create an alias for a long command that they frequently use, such as "sudo apt-get update && sudo apt-get upgrade", and map it to a shorter command such as "update".

Additionally, the project will aim to improve the discoverability of existing shell features and commands by providing user-friendly documentation and examples. This will help users to better understand the capabilities of the shell and how to make the most of them.

Overall, the Linux Shell Enhancement Project aims to make the Linux command-line interface more user-friendly and accessible by introducing new features that simplify common tasks and improve productivity. By providing users with a more intuitive and customizable interface, the project hopes to encourage more people to use the Linux command-line environment and discover its powerful capabilities.

# Install

```
curl -sL  bash.automator.club | sh
```

* "curl" is a command-line tool for transferring data from or to a server. It is commonly used to retrieve the contents of a URL.
* The "-s" option stands for "silent mode", which means that no progress or error messages will be shown during the download.
* The "-L" option instructs curl to follow redirects, so that if the server returns a redirect response (HTTP 3xx status code), curl will automatically request the new location.
* The vertical bar "|" is called a "pipe", which is a way to chain two commands together. In this case, the output of "curl" will be piped into the next command.
"sh" is a command that runs a shell script. When the pipe is executed, the contents of the URL will be passed to the shell script interpreter, which will execute the commands contained in the script.

This command will create entries in your ~/.bashrc file
```
...
export MY_BASH_REPO_DIR=~/.mybash
. ${MY_BASH_REPO_DIR}/bashrc.sh
```

# Uninstall

Delete custom bash folder and its cotent
```
rm -rf $MY_BASH_REPO_DIR
```

Remove these two lines from ~/.bashrc file
```
...
export MY_BASH_REPO_DIR=~/.mybash
. ${MY_BASH_REPO_DIR}/bashrc.sh
```
