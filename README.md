# My Dotfiles

## How to
Every folder contains the dotfiles needed for the relative application.
First make sure that [GNU Stow](https://www.gnu.org/software/stow) is installed.
Clone this repository into the home directory:
```
cd ~
git clone https://github.com/andreafeletto/dotfiles.git
```
Move into the repository and stow the needed directories:
```bash
cd dotfiles
stow bash git mpd mpv ncmpcpp neovim npm other python sxiv x11
```

## Install packages
Arch linux packages:
```
sudo pacman -S - < pkgs
```
Debian/Ubuntu packages:
```
xargs -a pkgs sudo apt install
```
Gems:
```
xargs -a pkgs-gem gem install
```
Pip:
```
pip install --user -r pkgs-pip
```
Npm:
```
xargs -a pkgs-npm npm i -g
```
Termux:
```
xargs -a pkgs-pip pkg install
```

## Download wallpapers
Change the $dir and $urls (space separated string) variables then run:
```
./wall-download
```

## Partially stolen from...

[Luke Smith](https://github.com/LukeSmithxyz/voidrice) (for the main setup), [AntSunrise](https://github.com/AntSunrise/URxvt-themes) (for themes).
