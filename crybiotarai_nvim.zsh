sudo apt install neovim

mkdir ~/.config/nvim/

touch ~/.config/nvim/init.vim

npm install -g npm@latest

mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

dpkg-reconfigure fontconfig-config

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

dpkg-reconfigure fontconfig-config

sudo apt-get remove --purge vim-ultisnips vim-snippets
sudo apt-get autoremove
sudo rm -rf /var/lib/vim/addons/pythonx/UltiSnips/snippet
npm i -g eslint eslint-plugin-vue
sudo apt-get install exuberant-ctags



