#!/bin/bash

while(($#)); do 

	case "$1" in

	# -r | --ruby) echo "install ruby" ;; Update script before commenting this out

	-n) ./scripts/node.sh ;;

  # -g) ./scripts/github.sh ;; # Use Faraday to log a user in to GitHub before commenting this out

	-d || --docker) ./scripts/docker.sh ;;

    --gitbranch) ./scripts/display_git_branch.sh ;;

    --help) ./scripts/help.sh ;;

	*) source ./scripts/help.sh ;;

	esac

	shift

done