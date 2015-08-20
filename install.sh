ln -sfv "$dotfiles/editor/.tmux.conf" "~"
ln -sfv "$dotfiles/editor/.vimrc" "~"

ln -sfv "$dotfiles/system/.bash_aliases" "~"
ln -sfv "$dotfiles/system/.bashrc" "~"
ln -sfv "$dotfiles/system/.colors" "~"
ln -sfv "$dotfiles/system/.gitconfig" "~"
ln -sfv "$dotfiles/system/.Xdefaults" "~"

ln -sfv "$dotfiles/system/xkb/" "/usr/share/X11/"
ln -sfv "$dotfiles/system/xinitrc" "/etc/X11/xinit/"

ln -sfv "$dotfiles/system/wm/.i3/" "~"

sudo apt-get install vim
sudo apt-get install tmux

