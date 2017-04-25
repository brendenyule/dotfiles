#---THINGS YOU WILL NEED-
# Font Rendering: Infintality

#need i3 log directory
#need copy-paste support for urxvt
#look into an actual keymapping config

#sudo pacman -S install udev
#sudo pacman -S udevil
sudo pacman -S base-devel
sudo pacman -S chromium
sudo pacman -S compton
sudo pacman -S conky
sudo pacman -S curl
sudo pacman -S dmenu
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
sudo pacman -S xf86-input-libinput
sudo pacman -S xf86-video-intel

#sudo pacman -Rs xf86-input-synaptics

mkdir aur
cd aur
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -sri
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -sri
cd ..

https://aur.archlinux.org/light.git
cd light
makepkg -sri
cd

yaourt -S rxvt-unicode-patched
yaourt -S ttf-ubuntu-font-family
yaourt -S ttf-font-awesome
yaourt -S light
yaourt -S tintin
yaourt -S linux-macbook

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
ln -sfv "/home/doctorly/dotfiles/system/compton.conf" "/home/doctorly/.config/"

#sudo ln -sfv "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"
sudo ln -sfv "/home/doctorly/dotfiles/system/xinitrc" "/home/doctorly/.xinitrc"

mkdir -p /home/doctorly/logs/i3
ln -sf "/home/doctorly/dotfiles/wm/.i3/config" "/home/doctorly/.i3/config"
ln -sf "/home/doctorly/dotfiles/wm/.i3/conky" "/home/doctorly/.i3/conky"
ln -sf "/home/doctorly/dotfiles/wm/.i3/conky.sh" "/home/doctorly/.i3/conky.sh"
sudo cp -rf "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"

sudo ln -sf "/home/doctorly/dotfiles/system/urxvtclip" "/usr/lib/urxvt/perl/clipboard"
sudo ln -sf "/home/doctorly/dotfiles/system/urxvtclip" "/usr/lib64/urxvt/perl/clipboard"

