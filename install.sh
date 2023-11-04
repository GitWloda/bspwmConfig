#isntall base things
echo "installing base things"
doas pacman --needed -S base base-devel linux-firmware intel-ucode doas sudo networkmanager
#linux-zen linux-zen-headers

#install driver
echo "installing driver"
doas pacman --needed -S nvidia-utils nvidia-prime mesa intel-gpu-tools xorg
shaur -S asusctl envycontrol
#nvidia-open-dkms

#install screen rice
echo "installing screen rice"
doas pacman --needed -S sxhkd bspwm polybar rofi dunst bat feh python-pywal alacritty exa

#install tecnical rice
echo "installing technical rice"
doas pacman --needed -S zip unzip git curl gzip jq skim fd git zsh numlockx

#install rest
echo "install rest of rice"
shaur -S battop gotop rog-control-center ttf-ubraille

