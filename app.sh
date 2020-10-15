#!/bin/bash

source ./scripts/utilitites/color_env_variables.sh

while :; do

	permission=$(stat -L -c "%a" ./scripts/main.sh)

	if [[ $permission -le 664 ]]; then
		printf "\n You do not have permission to run the scripts."

		printf "\n You can manually set permissions with\n"

		printf "\n ${green}chmod <${blue}who${green}> + <${blue}rwx${green}> ${blue}./path/to/script${end}\n"
		printf "\n use the chmod command and pass in the users who you want to change permission"
		printf "\n"
		printf "\n If you want to change permissions for all files inside sub directories use the -R option"
		printf "\n u - owner"
		printf "\n g - group"
		printf "\n o - others (not user or group permission)"
		printf "\n a - all"
		printf "\n"
		printf "\n then you use the '+' sign followed by the permission"
		printf "\n r - read"
		printf "\n w - write"
		printf "\n x - execute"
		printf "\n"
		printf "\n To give all users execute permissions of the scripts use - "
		printf "\n"
		printf "\n ${green}chmod -R a+x ./scripts${end}\n"

		printf "\n"

		printf "\n Do you want env_setup to give all users execute permissions for the scripts? \n"
		printf " \n"
		read user_input 

		if [[ ${user_input^^} == "YES" || ${input^^} == "Y" ]]; then 
			chmod -R a+x ./scripts
			echo "Permissions changed"
			printf "\n"
		else 
			printf " Exiting EnvSetup. \n \n"
			break
		fi 

	fi

	printf "\n Welcome to env setup"
	printf "\n Type exit to exit the program \n"
	read input

	if [[ $input == "exit" ]]; then
		echo "Goodbye"
		break
	fi

	./scripts/main.sh $input

done
