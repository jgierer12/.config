## Contents

- `./git`: git
- `./Code/User`: VSCode
- `./fish`: fish shell
- `./packages`: installed packages (from Manjaro repos and AUR)

## Installation

```fish
cd ~/.config
git init
git remote add origin https://github.com/jgierer12/.config.git
git fetch
git reset --hard origin/master

pacman -S yay fish
fish -c install_saved_packages
chsh -s /usr/bin/fish

reboot

vscode_install_saved_extensions
```
