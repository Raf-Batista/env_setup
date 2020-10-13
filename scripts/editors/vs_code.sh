#!/bin/bash 

# https://code.visualstudio.com/docs/setup/linux 


# Install VS Code extensions

# --install-extension <ext>	Install an extension. Provide the full extension name publisher.extension as an argument. Use --force argument to avoid prompts.
# --uninstall-extension <ext>	Uninstall an extension. Provide the full extension name publisher.extension as an argument.
# --disable-extensions	Disable all installed extensions. Extensions will still be visible in the Disabled section of the Extensions view but they will never be activated.
# --list-extensions	List the installed extensions.
# --show-versions	Show versions of installed extensions, when using --list-extensions
# --enable-proposed-api <ext>	Enables proposed api features for an extension. Provide the full extension name publisher.extension as an argument.

sudo apt update
sudo apt install software-properties-common apt-transport-https wget

# Next, import the Microsoft GPG key using the following wget command:

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# And enable the Visual Studio Code repository by typing:

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Once the apt repository is enabled, install the latest version of Visual Studio Code with:

sudo apt update
sudo apt install code


# code --install-extension ritwickdey.liveserver
# code --install-extension ms-azuretools.vscode-docker
# code --install-extension dsznajder.es7-react-js-snippets
# code --install-extension mjmcloug.vscode-elixir
# code --install-extension eamodio.gitlens
# code --install-extension rebornix.ruby
# code --install-extension bung87.rails
# code --install-extension esbenp.prettier-vscode
# code --install-extension visualstudioexptteam.vscodeintellicode
# code --install-extension wallabyjs.quokka-vscode
# code --install-extension ms-vscode-remote.remote-containers
# code --install-extension streetsidesoftware.code-spell-checker
# code --install-extension ms-vsliveshare.vsliveshare
# code --install-extension yzhang.markdown-all-in-one
# code --install-extension msjsdiag.debugger-for-chrome
# code --install-extension coenraads.bracket-pair-colorizer
# code --install-extension humao.rest-client
# code --install-extension formulahendry.auto-rename-tag
# code --install-extension ecmel.vscode-html-css
# code --install-extension chakrounanas.turbo-console-log
# code --install-extension oderwat.indent-rainbow
# code --instsall-extension vscjava.vscode-spring-initializr
# code --install-extension vscjava.vscode-java-pack
# code --install-extension adashen.vscode-tomcat
# code --install-extension pivotal.vscode-spring-boot
# code --install-extension vscjava.vscode-spring-boot-dashboard
# code --install-extension summersun.vscode-jetty
# code --install-extension shengchen.vscode-checkstyle
# code --install-extension almenon.arepl
# code --install-extension kiteco.kite
# code --install-extension njpwerner.autodocstring
# code --install-extension vscodevim.vim
# code --install-extension ms-dotnettools.csharp