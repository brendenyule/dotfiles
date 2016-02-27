sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install python-dev python-pip python3-dev python3-pip


sudo apt-get install vim
sudo apt-get install neovim
sudo apt-get install tmux
sudo apt-get install i3
sudo apt-get install conky
sudo apt-get install irssi
sudo apt-get install udevil
sudo apt-get install rxvt-unicode-256color
sudo apt-get install wicd-curses
sudo apt-get install compton
sudo apt-get install unclutter
sudo apt-get install git

ln -sfv "/home/doctorly/dotfiles/editor/.tmux.conf" ~
ln -sfv "/home/doctorly/dotfiles/editor/.vimrc" ~
ln -sfv "/home/doctorly/.config/nvim/init.vim" ~

ln -sfv "/home/doctorly/dotfiles/system/.bash_aliases" ~
ln -sfv "/home/doctorly/dotfiles/system/.bashrc" ~
ln -sfv "/home/doctorly/dotfiles/system/.colors" ~
ln -sfv "/home/doctorly/dotfiles/system/.gitconfig" ~
ln -sfv "/home/doctorly/dotfiles/system/.Xdefaults" ~

#sudo ln -sfv "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"
sudo ln -sfv "/home/doctorly/dotfiles/system/xinitrc" "/etc/X11/xinit/"

ln -sfv "/home/doctorly/dotfiles/system/wm/.i3/" ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

