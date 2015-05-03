ln -sfv "$dotfiles/editor/.vimrc" ~
ln -sfv "$dotfiles/editor/.tmux.conf" ~
ln -sfv "$dotfiles/system/.bashrc" ~
ln -sfv "$dotfiles/system/.bash_aliases" ~
ln -sfv "$dotfiles/system/.gitconfig" ~

sudo apt-get install vim
sudo apt-get install tmux

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wait $!

bash < <(curl -sL https://raw.github.com/railsgirls/installation-scripts/master/rails-install-ubuntu.sh)
wait $!
rvm install ruby --latest
rvm reset

