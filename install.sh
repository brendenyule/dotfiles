sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:linrunner/tlp
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
sudo apt-get install xclip
sudo apt-get install silversearcher-ag

ln -sfv ~/dotfiles/editor/.tmux.conf ~
ln -sfv ~/dotfiles/editor/.vimrc ~
ln -sfv ~/dotfiles/editor/.vimrc ~/.config/nvim/init.vim

ln -sfv ~/dotfiles/system/.bash_aliases ~
ln -sfv ~/dotfiles/system/.bashrc ~
ln -sfv ~/dotfiles/system/.colors ~
ln -sfv ~/dotfiles/system/.gitconfig ~
ln -sfv ~/dotfiles/system/.Xdefaults ~

#sudo ln -sfv "/home/doctorly/dotfiles/system/xkb/" "/usr/share/X11/"
sudo ln -sfv "~/dotfiles/system/xinitrc" "/etc/X11/xinit/"

mkdir .i3
ln -sfv ~/dotfiles/wm/.i3/conky ~/.i3/.
ln -sfv ~/dotfiles/wm/.i3/conky.sh ~/.i3/.
ln -sfv ~/dotfiles/wm/.i3/config ~/.i3/.

ln -sfv ~/dotfiles/system/xkb/keycodes/evdev /usr/share/X11/xkb/keycodes/evdev
sudo rm -rf /var/lib/xkb/*

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -Lo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# OSX features
sudo apt-get install powertop
sudo apt-get install tlp tlp-rdw
 from ttps://help.ubuntu.com/community/MacBookAir6-2/Trusty?action=AttachFile&do=view&target=tlp
sudo mkdir /etc/default/tlp
mkdir ~/src
git clone https://github.com/hobarrera/kbdlight/ ~/src/.
make ~/src/kbdlight
#sudo curl -Lo /etc/default/tlp https://help.ubuntu.com/community/MacBookAir6-2/Trusty?action=AttachFile&do=get&target=tlp

