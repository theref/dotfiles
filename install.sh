rm -rf ~/dotfiles

git clone https://github.com/theref/dotfiles.git --recursive ~/dotfiles

rm ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

rm ~/.bash_profile
ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile




rm '~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings'
rm '~/Library/Application Support/Sublime Text 3/Packages/User/Python.sublime-settings'
rm '~/Library/Application Support/Sublime Text 3/Packages/User/commit-message.sublime-settings'
ln -s ~/dotfiles/sublime/Preferences.sublime-settings '~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings'
ln -s ~/dotfiles/sublime/Python.sublime-settings '~/Library/Application Support/Sublime Text 3/Packages/User/Python.sublime-settings'
ln -s ~/dotfiles/sublime/commit-message.sublime-settings '~/Library/Application Support/Sublime Text 3/Packages/User/commit-message.sublime-settings'
