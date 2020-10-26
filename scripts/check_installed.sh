#!/bin/bash 

printf "This is a text file with all of the languages, frameworks, etc. installed. \nDo not edit this file \n \n" > ./scripts/installed.txt

# replace each one with the appropriate way to check the version
installed=("ruby" "node" "c#" "java" "phoenix" "zeal" "atom" "intelliJ" "sublime" "code" "docker" "github" "heroku" "netlify" "surge" "postgres" "redis")

# loop through the array and check if we can run the version command on each element, if we can then we add it to the installed.txt file
for i in ${installed[@]}; do 

    if [[ $($i -- version 2>/dev/null)  ]]; then 
        printf "$i\n" >> ./scripts/installed.txt
    fi 

done 