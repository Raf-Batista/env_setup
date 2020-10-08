#!/bin/bash

# https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt

# Show git branch in terminal in green
printf '\n' >> ~/.bashrc
echo 'git_branch() {' >> ~/.bashrc
echo "  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'" >> ~/.bashrc
echo '}' >> ~/.bashrc
printf '\n' >> ~/.bashrc
echo 'export PS1="[\u@\h \W]\[\033[00;32m\]\$(git_branch)\[\033[00m\]\$ "' >> ~/.bashrc