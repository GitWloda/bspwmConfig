#upgrade pacman
echo "upgrade pacman and shaur"
doas pacman -Suyy
shaur -U

#isntall base things
echo "installing base things"
doas pacman --needed -S base base-devel linux-firmware intel-ucode doas sudo networkmanager linux-zen linux-zen-headers

#install driver
echo "installing driver"
doas pacman --needed -S nvidia-open-dkms nvidia-utils nvidia-prime mesa intel-gpu-tools xorg pulseaudio pavucontrol
shaur -S asusctl envycontrol

#install screen rice
echo "installing screen rice"
doas pacman --needed -S sxhkd bspwm polybar rofi dunst bat feh python-pywal alacritty exa noto-fonts-emoji
shaur -S picom-allusive

#install tecnical rice
echo "installing technical rice"
doas pacman --needed -S zip unzip git curl gzip jq skim fd git zsh numlockx 
shaur -S ueberzugpp yazi-git

#install rest
echo "install rest of rice"
sudo pacman -S yazi ffmpegthumbnailer unarchiver jq poppler fd ripgrep fzf zoxide
shaur -S battop gotop rog-control-center ttf-ubraille nchat 
