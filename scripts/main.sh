#!/bin/bash

while(($#)); do # Will run loop while there are still options

	case "$1" in # First option passed in to this script

     -r | --ruby) ./scripts/languages/ruby.sh ;; 

	--ruby-info) ./scripts/info_scripts/ruby_info.sh ;;

	-n | --node) ./scripts/node.sh ;;

	--node-info) ./scripts/info_scripts/node_info.sh ;;

	-phx | --phoenix) ./scripts/languages/phoenix.sh ;; 

	--phoenix-info) ./scripts/info_scripts/phoenix_info.sh ;;

	-j | --java) ./scripts/languages/java.sh ;;

	--java-info) echo "Add script for java info" ;;

	--c | --c_sharp) ./scripts/languages/c_sharp.sh ;;

	--c_sharp-info) echo "Add script for c sharp info" ;;

	-p | --postgres) ./scripts/databases/postgres.sh ;;

	--postgres-info) echo "Add script for postgres info" ;;

	-rs | --redis) ./scripts/databases/redis.sh ;;

	--redis-info) echo "Add script for redis info" ;;

	-d | --docker) ./scripts/devops/docker.sh ;;

	--docker-info) echo "Add script for docker info" ;;

	-h | --heroku) ./scripts/devops/heroku.sh ;;

	--heroku-info) echo "Add script for heroku info" ;;

	-n | --netlify) ./scripts/devops/netlify.sh ;;

	--netlify-info) echo "Add script for netlify info" ;;

	-s | --surge) ./scripts/devops/surge.sh ;;

	--surge-info) echo "Add script for surge info" ;;

	-t | --tomcat) ./scripts/servers/tomcat.sh ;;

	--tomcat-info) echo "Add script for tomcat info" ;;

	-a | --atom) ./scripts/editors/atom.sh ;;

	--atom-info) echo "Add script for atom info" ;;

	-a | --atom) ./scripts/editors/atom.sh ;;

	--atom-info) echo "Add script for atom info" ;;

	-i | --intelliJ) ./scripts/editors/intelliJ.sh ;;

	--intelliJ-info) echo "Add script for intelliJ info" ;;

	-sl | --sublime) ./scripts/editors/sublime.sh ;;

	--sublime-info) echo "Add script for sublime info" ;;

	-v | --vs_code) ./scripts/editors/vs_code.sh ;;

	--vs_code-info) echo "Add script for vs code info" ;;

  # -g) ./scripts/github.sh ;; # Use Faraday to log a user in to GitHub before commenting this out

	-g | --gimp) ./scripts/tools/gimp.sh ;;

	--gimp-info) echo "Add script for gimp info" ;;

	-pm | --postman) ./scripts/tools/postman.sh ;;

	--postman-info) echo "Add script for postman info" ;;

	-z | --zeal) ./scripts/tools/postman.sh ;;

	--zeal-info) echo "Add script for zeal info" ;;

    --gitbranch) ./scripts/display_git_branch.sh ;;

    --help) ./scripts/help.sh ;;

	*) source ./scripts/help.sh ;;

	esac

	shift # remove the option, now $1 is not the next option

done