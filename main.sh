#!/bin/bash 

red=$'\e[1;31m'
green=$'\e[1;32m'
end=$'\e[0m'

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
