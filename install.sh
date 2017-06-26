rm -rf ~/dotfiles

git clone https://github.com/theref/dotfiles.git --recursive ~/dotfiles

rm -f ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

rm -f ~/.bash_profile
ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile