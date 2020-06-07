#!/bin/bash 
set -e 
set -u 
set -o pipefail

usage () {
  printf "The following options for languages are available. \n e (erlang, elixir, and phoenix) \n j (java) \n r (ruby, rails, and rvm) \n n (node, npm, and nvm) \n"
  printf "The following options for IDEs are available. \n v (visual studio) \n"
  printf "The following options are available for databases \n P (postgres) \n"
  printf "The following optionals can be instalked \n d (Docker, Docker compose) \n g (GitHub) \n p (postman) \n"
  printf "You can install everything with E \n"

}

 if [ $# -eq 0 ]; then
        echo "No arguments provided"
        exit 1
 fi

while getopts 'ahvbP' OPTION; do 
    case "$OPTION" in 
        h)
          usage
          ;;
        v) 
          echo "Version 1.0"
          ;;
        b) 
          #/bin/bash ./scripts/display_git_branch.sh
          echo BRANCH
          ;;  
        P) 
          #/bin/bash ./scripts/display_git_branch.sh
          echo POSTGRES
          ;;  
        ?) 
        echo "$(basename $0) [-h] [-v]" >&2
        exit 1
        ;;
    esac
done 
shift "$(($OPTIND -1))"