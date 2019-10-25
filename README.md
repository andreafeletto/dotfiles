# My Dotfiles

## How to
Every folder contains the dotfiles needed for the relative application.
First make sure that [GNU Stow](https://www.gnu.org/software/stow) is installed.
Clone this repository into the home directory:
```sh
cd ~
git clone https://github.com/andreafeletto/dotfiles.git
```
Move into the repository and run the install script:
```sh
cd dotfiles
./install
```
To install a subset of the configuration files just use Stow.
Just know that if a subdirectory of the chosen directory is not already
present it will be symlinked. This means that new files in the
subdirectory will also be added to the repository, which may not be
what you want.
```sh
mkdir -p ~/.config/nvim
stow neovim
```

## Install packages
Arch linux packages:
```
sudo pacman -S - < pkgs-arch
```
Debian/Ubuntu packages (Not tested, packages may not exist):
```
xargs -a pkgs-arch sudo apt install
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

[Luke Smith](https://github.com/LukeSmithxyz/voidrice)
