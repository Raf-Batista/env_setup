#!/bin/bash

while(($#)); do # Will run loop while there are still options

	case "$1" in # First option passed in to this script

    -r | --ruby) ./scripts/languages/ruby.sh ;; 

	-n) ./scripts/node.sh ;;

	--node-info) ./scripts/help_scripts/node_help.sh ;;

  # -g) ./scripts/github.sh ;; # Use Faraday to log a user in to GitHub before commenting this out

	-d | --docker) ./scripts/dev_ops/docker.sh ;;

    --gitbranch) ./scripts/display_git_branch.sh ;;

    --help) ./scripts/help.sh ;;

	*) source ./scripts/help.sh ;;

	esac

	shift # remove the option, now $1 is not the next option

done