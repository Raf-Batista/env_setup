#!/bin/bash 
set -e 
set -u 
set -o pipefail

 if [ $# -eq 0 ]; then
        echo "No arguments provided"
        exit 1
 fi

while getopts 'ahvb' OPTION; do 
    case "$OPTION" in 
        h)
          echo HELP
          ;;
        v) 
          echo "Version 1.0"
          ;;
        b) 
          /bin/bash ./scripts/display_git_branch.sh
          ;;  
        ?) 
        echo "$(basename $0) [-h] [-v]" >&2
        exit 1
        ;;
    esac
done 
shift "$(($OPTIND -1))"