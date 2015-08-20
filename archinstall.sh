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

pacman -S vim
pacman -S tmux
pacman -S i3
pacman -S conky
pacman -S irssi
pacman -S install udev
pacman -S udevil
pacman -S rxvt-unicode-256color
pacman -S wicd-curses
pacman -S compton
pacman -S the_silver_searcher
pacman -S git

