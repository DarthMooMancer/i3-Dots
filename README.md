# Before Installation

- This is mainly for Arch Linux and will work on Arch. It may work on other systems but keep that in mind
- Move the asound.conf to etc if needed and also the main.conf to iwd in /etc/iwd if needed

# Installation
Packages Needed
---------------
Make sure you have yay installed or a package manager for the aur installed

```
yay -S xorg-xinput xorg-xrandr acpi autotiling fd brightnessctl i3-wm i3lock i3blocks jdtls kitty npm neovim rofi picom-ftlabs-git
```
You will also need to download the old jetbrainsmono nerd fonts before update 3 as update 3 breaks icons. Here is the link https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.3.3

Getting Repo and Files
----------------------
- install git and clone the repo -> 
```
sudo pacman -S git
git clone https://github.com/DarthMooMancer/dotfiles.git
cd dotfiles
```

- Copy files manually -> 

```
cp -r .config/* $HOME/.config
cp .zshrc $HOME
cp -r Pictures/Wallpapers $HOME/Pictures
```
- Or use stow -> 

```
sudo pacman -S stow
stow . --adopt
```
