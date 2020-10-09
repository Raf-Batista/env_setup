#!/bin/bash 

while [ -n "$1" ]; do 

	case "$1" in

	# -r | --ruby) echo "install ruby" ;; Update script before commenting this out

	-n) ./scripts/node.sh ;;

  # -g) ./scripts/github.sh ;; # Use Faraday to log a user in to GitHub before commenting this out

	-d) ./scripts/docker.sh

    --gitbranch) ./scripts/display_git_branch.sh ;;

    --help) printf "Here are the available commands \n --gitbranch (show git branch in green) \n" ;;


	*) echo "Option $1 not recognized" ;;

	esac

	shift

done
