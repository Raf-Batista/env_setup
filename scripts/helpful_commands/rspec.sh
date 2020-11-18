#!/bin/bash 


cat <<- EOF 

to set default color and format, create a file in the root of the project and add the following line 

# .rspec
--color
--format documentation

If you want to set it globally, copy and paste the following command in your terminal 

printf "--color \n--format documentation" > ~/.rspec

If you created a rails project without RSpec, first add the gem 'rspec rails' to the :development and :test groups in your gemfile, then in the terminal run   

bundle install 

then after you install the gems, run this command 

rails generate rspec:install 

Now when you generate a model for example, you will have specs created automatically for them 

Note, if you do not have a rails project, just add 'rspec' to your gemfile. You then can run 

rspec --init

EOF
