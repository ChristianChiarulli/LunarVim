# download anonymice font
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Mono.ttf $HOME/Downloads/

# remove vim if installed and install neovim from source and dependencies
apt remove vim -y
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb
apt install -y \
  ./nvim-linux64.deb \
  ripgrep
rm nvim-linux64.deb

# install lvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# copy my settings
rm -rf $HOME/.config/lvim
git clone git@github.com:f1lem0n/nvim.git $HOME/.config/lvim

# add executable to path
echo "export PATH=/home/f1lem0n/.local/bin:$PATH" >> $HOME/.bashrc

echo "You are almost done..."
echo "Do not forget to set your terminal font as Anonymice (which is in your ~/Downloads) or another nerd-font."
