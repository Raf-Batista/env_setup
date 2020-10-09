#!/bin/bash 

# Link to the format colors
# https://unix.stackexchange.com/questions/92563/friendly-terminal-color-names-in-shell-scripts

red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
end=$'\e[0m'

export red 
export green 
export blue 
export magenta 
export cyan 
export end

while(($#)); do 

	case "$1" in

	# -r | --ruby) echo "install ruby" ;; Update script before commenting this out

	-n) ./scripts/node.sh ;;

  # -g) ./scripts/github.sh ;; # Use Faraday to log a user in to GitHub before commenting this out

	-d) ./scripts/docker.sh ;;

    --gitbranch) ./scripts/display_git_branch.sh ;;

    --help) ./scripts/help.sh ;;


	*) printf "Option $1 not a recognized command. \n Use ${green}--help${end} to see available options. \n" ;;

	esac

	shift

done
