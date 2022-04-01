#!/bin/bash


sudo apt update
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp -r --verbose ./zshrc ~/.zshrc
echo " ================= Welcome to Zsh ==================== "
cat ./welcome.txt
echo " You can set Zsh as your defult shell by typing excecuting ==> chsh -s /usr/bin/zsh "
zsh
