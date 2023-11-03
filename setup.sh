#setup on-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#setup zap
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1


# setup vim keybinds
echo "bindkey -v" >> $HOME/.zshrc
# setup powerlevel10k
echo "plug \"romkatv/powerlevel10k\"" >> $HOME/.zshrc
echo "source \"$HOME/.p10k.zsh\"" >> $HOME/.zshrc 

# setup joshuto
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install --git https://github.com/kamiyaa/joshuto.git --force


# setup lazyvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
