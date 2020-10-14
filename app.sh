#!/bin/bash 

source ./scripts/utilitites/color_env_variables.sh

while : ; do 
	printf "\n Welcome to env setup" 
	printf "\n Type exit to exit the program \n"

	read input 

	if [[ $input == "exit" ]]; then  
		echo "Goodbye"
		break
	fi 


	./scripts/main.sh $input

done 
