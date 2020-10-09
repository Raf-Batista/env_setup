#!/bin/bash

############# Node JS with nvm ###############
# https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/

# download and install nvm script
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node

nvm install --lts

# To list installed Node.js versions type:

# nvm ls

# You can install different versions like this
# nvm install 8.10.0

# You can switch versions like this
# nvm use 10.16.3

# You can change the default version
# nvm alias default 10.16.3

# Set file permissions

sudo chown root:staff /usr/bin

sudo chmod 0775 /usr/bin

sudo chown -R root:npm /usr/lib/node_modules

sudo chmod 0775 /usr/lib/node_modules