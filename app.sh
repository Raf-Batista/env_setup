#!/bin/bash

source ./scripts/utilitites/color_env_variables.sh

while :; do
	printf "\n Welcome to env setup"
	printf "\n Type exit to exit the program \n"
	read input

	if [[ $input == "exit" ]]; then
		echo "Goodbye"
		break
	fi

	permission=$(stat -L -c "%a" ./scripts/main.sh)

	if [[ $permission -le 664 ]]; then
		printf "\n You do not have permission to run the main script. \n Would you like to give permission to the main script as well as all other subsequent scripts?"

		printf "\n You can manually set permissions with"

		printf "\n ${green}chmod +a+x${end} ${blue}./path/to/script${end}"

	fi

	#./scripts/main.sh $input

done
