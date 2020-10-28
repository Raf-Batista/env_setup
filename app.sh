#!/bin/bash

source ./scripts/color_env_variables.sh
source ./scripts/directory.sh

while :; do

	FILE=./scripts/installed.txt

	# Check to see if installed.txt exists. If it doesn't then we run the script to check what's installed in the system and add them to list
	if [[ ! -f $FILE ]]; then 
		./scripts/check_installed.sh
	fi

	permission=$(stat -L -c "%a" ./scripts/main.sh)

	# Check if we have permission to run the main script. If we don't we give the user brief info on changing permission and ask if the user wants Env_Setup to change permissions on their behalf
	if [[ $permission -le 664 ]]; then
		cat <<- EOF 

			You do not have permission to run the scripts
			You can manually set permissions with
			${green}chmod <${blue}who${green}> + <${blue}rwx${green}> ${blue}./path/to/script${end}

			use the chmod command and pass in the users who you want to change permission
			If you want to change permissions for all files inside sub directories use the -R option

			u - owner
			g - group
			o - others (not user or group permission)
			a - all
		
			then you use the '+' sign followed by the permission
			r - read"
			w - write"
			x - execute"
		
			To give all users execute permissions of the scripts use - 
	
			${green}chmod -R a+x ./scripts${end}
		
			Do you want env_setup to give all users execute permissions for the scripts? 
	
		EOF

		read user_input 

		# capitalizes the user's input and check if it is either "YES" or "Y", if so then we change the permissions of all the scripts
		if [[ ${user_input^^} == "YES" || ${input^^} == "Y" ]]; then 
			chmod -R a+x ./scripts
			echo "Permissions changed"
			printf "\n"
		else 
			printf " Exiting EnvSetup. \n \n"
			break
		fi 

	fi

	cat <<- EOF 

		Welcome to Env Setup
		Type --help to view availabe commands 
		Type "exit" to exit the program

		Here is an example of installing ruby and getting info about ruby 

		${blue}-r${end} : Will install rvm (ruby version manager) and ruby
		${blue}--ruby${end} : long form of above command
		${blue}--ruby-info${end} : gives you a brief description of what ruby is, every command follows the same structure 

		for example, ${blue}-n${end} and ${blue}--node${end} installs node and to get information about node you hust append ${green}-info${end} to the longform command, in this case it will be ${blue}--node-info${end}

	EOF

	read input

	# Break out of loop if user entered "exit"
	if [[ $input == "exit" ]]; then
		echo "Goodbye"
		break
	fi

	# If user did not exit then this loop will keep running the main script with whatever option the user typed
	./scripts/main.sh $input

done
