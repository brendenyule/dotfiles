#---THINGS YOU WILL NEED---
#
#
#https://github.com/radiosilence/irssi-dunst
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

sudo pacman -S vim
sudo pacman -S neovim
sudo pacman -S tmux
sudo pacman -S i3
sudo pacman -S conky
sudo pacman -S dunst
sudo pacman -S mutt
sudo pacman -S irssi
sudo pacman -S install udev
sudo pacman -S udevil
sudo pacman -S rxvt-unicode-patched
sudo pacman -S compton
sudo pacman -S the_silver_searcher
sudo pacman -S unclutter
sudo pacman -S chromium

