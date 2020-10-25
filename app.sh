#!/bin/bash

source ./scripts/color_env_variables.sh
source ./scripts/directory.sh

while :; do

	permission=$(stat -L -c "%a" ./scripts/main.sh)

	if [[ $permission -le 664 ]]; then
		cat <<- EOF 

			You do not have permission to run the scripts
			You can manually set permissions with
			${green}chmod <${blue}who${green}> + <${blue}rwx${green}> ${blue}./path/to/script${end}

			use the chmod command and pass in the users who you want to change permission
			If you want to change permissions for all files inside sub directories use the -R option

			u - owner"
			g - group"
			o - others (not user or group permission)"
			a - all"
		
			then you use the '+' sign followed by the permission"
			r - read"
			w - write"
			x - execute"
		
			To give all users execute permissions of the scripts use - 
	
			${green}chmod -R a+x ./scripts${end}
		
			Do you want env_setup to give all users execute permissions for the scripts? 
	
		EOF

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

	# printf "\n \n Welcome to env setup"
	# printf "\n Type exit to exit the program \n \n"

	cat <<- EOF 

		Welcome to Env Setup
		Type "exit" to exit the program

	EOF

	read input

	if [[ $input == "exit" ]]; then
		echo "Goodbye"
		break
	fi

	./scripts/main.sh $input

done
