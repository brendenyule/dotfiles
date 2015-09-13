ln -sfv "/home/doctorly/dotfiles/editor/.tmux.conf" ~
ln -sfv "/home/doctorly/dotfiles/editor/.vimrc" ~

ln -sfv "/home/doctorly/dotfiles/system/.bash_aliases" ~
ln -sfv "/home/doctorly/dotfiles/system/.bashrc" ~
ln -sfv "/home/doctorly/dotfiles/system/.colors" ~
ln -sfv "/home/doctorly/dotfiles/system/.gitconfig" ~
ln -sfv "/home/doctorly/dotfiles/system/.Xdefaults" ~

#sudo ln -sfv "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"
sudo ln -sfv "/home/doctorly/dotfiles/system/xinitrc" "/etc/X11/xinit/"

ln -sfv "/home/doctorly/dotfiles/system/wm/.i3/" ~

sudo apt-get install vim
sudo apt-get install tmux
sudo apt-get install i3
sudo apt-get install conky
sudo apt-get install irssi
sudo apt-get install udevil
sudo apt-get install rxvt-unicode-256color
sudo apt-get install wicd-curses
sudo apt-get install compton
sudo apt-get install unclutter

