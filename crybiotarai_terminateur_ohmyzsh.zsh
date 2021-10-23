sudo apt install zsh zplug
mkdir ~/.Dotfiles
curl -L git.io/antigen > ~/.Dotfiles/antigen.zsh
# Load Antigen
echo '' >> ~/.zshrc
# Load Antigen configurations
antigen init ~/.antigenrc
