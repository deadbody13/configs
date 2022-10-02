#!/bin/bash
# moves files into approprate locations

cp .zshrc .zshenv $HOME

sudo mkdir /usr/share/zsh/plugins/powerlevel10k /usr/share/zsh/plugins/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git 

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sudo cp -r zsh-syntax-highlighting /usr/share/zsh/plugins/

rm -rf zsh-syntax-highlighting
