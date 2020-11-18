#!/bin/bash 

cat <<- EOF 

$blue irb $end - Starts up a ruby interactive terminal. Here you can run ruby code 

$blue require 'name_of_library_or_gem' $end - Loads the specified library. For example, you can type "require 'net/http'" into irb to load the net/http library

$blue irb -r 'path_to_file' $end - Loads your local file, you do not need to add the 'rb' extension

$blue history <count> - use the history command to show your history, you can provide an optional number if you only want to show a certain number of lines

$blue 'UP' or 'DOWN' arrow keys - cycle through your history just like in a Bash shell 

$blue CTRL+R - Use the Control key and R for reverse lookup just like in a Bash shell


EOF