#!/bin/bash -e
pacman -Sy
pacman -S curl zsh zsh-completions i3 neovim tmux termite htop tree redshift udiskie

# oh-my-zsh attempts to change shell
echo $SHELL
chsh -s /bin/zsh
echo $SHELL


# THIS_DIR="$( cd "$( dirname "$0" )" && pwd )"  referencing install.sh from powerline repo

# TODO get Menlo, Monaco, 
# Install Hack-Powerline
	#mkdir -p $HOME/.local/share/fonts instead?
cp -r ./Fonts/Hack-Powerline /usr/share/fonts/
chmod 0555 /usr/share/fonts/Hack-Powerline
fc-cache

# update .zsh_profile (starts X System) to run i3 on start/login

### if using rofi insead of dmenu dont clone install manually
#git clone https://github.com/0xdec/base16-rofi.git
#ln -s base16-rofi ~/.local/share/rofi/themes/
#rofi -theme base16-default-dark

# Download and run script that installs oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Can now Symlink .zshrc since it references oh-my-zsh
