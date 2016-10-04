#---THINGS YOU WILL NEED---
# Font Rendering: Infintality
#

#need i3 log directory
#need copy-paste support for urxvt
#look into an actual keymapping config

#sudo pacman -S install udev
#sudo pacman -S udevil
sudo pacman -S chromium
sudo pacman -S compton
sudo pacman -S conky
sudo pacman -S curl
sudo pacman -S dunst
sudo pacman -S git
sudo pacman -S htop
sudo pacman -S i3
sudo pacman -S install udiskie
sudo pacman -S irssi
sudo pacman -S libinput
sudo pacman -S mutt
sudo pacman -S neovim
sudo pacman -S the_silver_searcher
sudo pacman -S tmux
sudo pacman -S unclutter
sudo pacman -S vim
sudo pacmna -S base-devel

mkdir aur
cd aur
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -sri
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -sri
cd

yaourt -S rxvt-unicode-patched
yaourt -S ttf-ubuntu-font-family
yaourt -S ttf-font-awesome


#neovim plugin manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#https://github.com/radiosilence/irssi-dunst
ln -sfv "/home/doctorly/dotfiles/editor/.tmux.conf" ~
ln -sfv "/home/doctorly/dotfiles/editor/.vimrc" "/home/doctorly/.config/nvim/init.vim"

ln -sfv "/home/doctorly/dotfiles/system/.bash_aliases" ~
ln -sfv "/home/doctorly/dotfiles/system/.bashrc" ~
ln -sfv "/home/doctorly/dotfiles/system/.colors" ~
ln -sfv "/home/doctorly/dotfiles/system/.gitconfig" ~
ln -sfv "/home/doctorly/dotfiles/system/.Xdefaults" ~

#sudo ln -sfv "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"
sudo ln -sfv "/home/doctorly/dotfiles/system/xinitrc" "/home/doctorly/.xinitrc"

mkdir -p /home/logs/i3
ln -sfv "/home/doctorly/dotfiles/system/wm/.i3/config" "/home/doctorly/.i3/config"
ln -sfv "/home/doctorly/dotfiles/system/wm/.i3/conky" "/home/doctorly/.i3/conky"
ln -sfv "/home/doctorly/dotfiles/system/wm/.i3/conky.sh" "/home/doctorly/.i3/conky.sh"
sudo cp -rf "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"

