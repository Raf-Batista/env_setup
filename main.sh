#!/bin/bash 

while [ -n "$1" ]; do 

	case "$1" in

	-r | --ruby) echo "install ruby" ;;

    --gitbranch) ./scripts/display_git_branch.sh ;;

    --help) printf "Here are the available commands \n --gitbranch (show git branch in green) \n" ;;


	*) echo "Option $1 not recognized" ;;

	esac

	shift

done
