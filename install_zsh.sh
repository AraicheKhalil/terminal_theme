#!/bin/sh

# Install Zsh + Oh My Zsh + Powerlevel10k theme (macOS & Linux)
# run: sudo apt install zsh | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" | git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Download all fonts from fonts folder and choice MesloLGS NF Regulare (in tweaks)
# # run: gedit ~/.zshrc =>  edit:  ZSH_THEME="powerlevel10k/powerlevel10k"

# Install plugins : 
#run: git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting | git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# run: gedit ~/.zshrc =>  edit: plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Remove installations + configurations
rm -f ~/.p10k.zsh
rm -rf -- ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sh ~/.oh-my-zsh/tools/uninstall.sh -y
sudo chsh -s $(which bash)
if [ "$(uname -s)" = "Darwin" ]; then
  brew uninstall zsh
else
  sudo apt remove zsh -y
  sudo apt autoremove -y
fi
rm -Rf ~/.zsh*
