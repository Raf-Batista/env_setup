#!/bin/bash 

cat <<- EOF 

$blue rails new <project name> $end - Generate a brand new rails project with the given name. There are different options you can pass 

--api 

smaller project for APIs 

--database=DATABASE_NAME | -d DATABASE_NAME 

configure rails to use the database specified instead of the default SQLite

--skip-test-unit | -T

Does not add test unit, you can set up your project with RSpec as your testing framework

a complete example would be 

rails new My_Awesome_Project -d postgres -T

$blue rails generate <channel | controller | model> $end - Use a tenlate to create boilerplate code 

$blue rails server $end - Start the rails server, you can also use "rails s" instead of typing out the word server 

$blue rails console $end - Start the rails console, similar to 'irb'. Your project is loaded automatically so you can for example create a new user from your User model. You can also use "rails c"

$blue rails db <create | migrate | reset> $end - You can create or reset your database and run migrations

You can view a complete guide from the rails documentation here

https://guides.rubyonrails.org/command_line.html

EOF