#sudo add-apt-repository ppa:neovim-ppa/unstable
#sudo add-apt-repository ppa:linrunner/tlp
#sudo apt-get update

sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install neovim

#sudo pacman -S chromium
#sudo pacman -S google-chrome-stable
#sudo apt-get install compton
sudo apt-get install conky
sudo apt-get install curl
sudo apt-get install dmenu
#sudo apt-get install dunst
sudo apt-get install git
sudo apt-get install htop
sudo apt-get install i3
sudo apt-get install irssi
sudo apt-get install mutt
sudo apt-get install neovim
sudo apt-get install silversearcher-ag
sudo apt-get install tmux
sudo apt-get install unclutter
sudo apt-get install rxvt-unicode-256color


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


# OSX features
#sudo apt-get install powertop
#sudo apt-get install tlp tlp-rdw
 #from ttps://help.ubuntu.com/community/MacBookAir6-2/Trusty?action=AttachFile&do=view&target=tlp
#sudo mkdir /etc/default/tlp
#mkdir ~/src
#git clone https://github.com/hobarrera/kbdlight/ ~/src/.
#make ~/src/kbdlight
#sudo curl -Lo /etc/default/tlp https://help.ubuntu.com/community/MacBookAir6-2/Trusty?action=AttachFile&do=get&target=tlp

