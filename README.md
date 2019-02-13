## Contents

- `./git`: git
- `./Code/User`: VSCode
- `./fish`: fish shell

## Installation

Prerequisites:

- git
- VSCode (AUR: visual-studio-code-bin)
- fish
- fisher
- hub
- npm
- yarn

```fish
cd ~/.config
git init
git remote add origin https://github.com/jgierer12/.config.git
git fetch
git reset --hard origin/master

reboot

vscode_install_saved_extensions
```
