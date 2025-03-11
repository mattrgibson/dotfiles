# dotfiles
My configuration files for bash, vim, tmux and so forth.

## Windows
You'll need to run the windows-install.ps1 in PowerShell 5 and 7 to create the appropriate symlinks

* Open PowerShell as an administrator
* Run command `mkdir ~/.config`
* Run command `cd ~/.config`
* Clone repo `git clone git@github.com:mattrgibson/dotfiles.git`
* Run install `.\windows-install.ps1`

## Ubuntu (WSL)

* Run command `cd ~`
* Clone repo `git clone git@github.com:mattrgibson/dotfiles.git .config`
* Make install script executable `chmod +x install.sh`
* Run install script `./install.sh`
