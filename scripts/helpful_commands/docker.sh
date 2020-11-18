#!/bin/bash 

cat <<- EOF 

$blue docker exec -it <container> bash $end - Connect to a running container and run bash. From here for example you can run "rails c" to start the rails console in your running container. The -i or --interactive keeps STDIN open if not attached and -t or --tty allocates a pseudo terminal that connects your terminal with the container’s STDIN and STDOUT.

$blue docker attach <container> $end - Attaches to a running container. If you are for example debugging your Rails application with byebug or pry you would need to attach to the container after byebug or pry is fired

EOF