!#/bin/bash 

# https://unix.stackexchange.com/questions/92563/friendly-terminal-color-names-in-shell-scripts

red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
end=$'\e[0m'

printf "\n Here are the available commands" 
printf "\n ${blue}--gitbranch${end} (show git branch in green)"
printf "\n ${blue}-n${end} (install node and nvm)" 