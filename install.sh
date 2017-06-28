rm -rf ~/dotfiles

git clone https://github.com/theref/dotfiles.git --recursive ~/dotfiles

rm ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

rm ~/.bash_profile
ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile

rm ~/.xonshshrc
ln -s ~/dotfiles/xonsh/xonshrc.py ~/.xonshrc

rm ~/.local_settings.xsh
cp ~/dotfiles/xonsh/local_settings.xsh.example ~/local_settings.xsh

# for mac
# install homebrew
# brew tap caskroom/versions
# brew cask install sublime-text
# add sublime text to path

# for linux
# 
# need to log out, then log in to see all changes