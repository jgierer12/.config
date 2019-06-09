## Contents

- `./git`: git
- `./Code/User`: VSCode
- `./fish`: fish shell
- `./deps`:
  - System dependencies
    > **Note**: On Arch-based operating systems, system dependencies are
    > automatically installed with pacman when running `init.sh`,
    > `deps_install_system`, `deps_install_all`, and `sysupdate`. To opt-out
    > of this, `export SKIP_SYSTEM_DEPS=true`/`set -x SKIP_SYSTEM_DEPS true`
    > before running these commands.
  - VSCode extensions
  - Global Yarn packages
  - fish plugins

## Installation

```bash
# Run this first if you want to skip installing system dependencies:
# export SKIP_SYSTEM_DEPS=true

sh -c "$(curl -fsSL https://raw.githubusercontent.com/jgierer12/.config/master/init.sh)"

# Recommended:
# reboot
```

## Additional setup

### GNOME extensions

The following GNOME extensions should be installed manually from
https://extensions.gnome.org/ for compatibility reasons:

- [Dynamic Panel Transparency](https://extensions.gnome.org/extension/1011/dynamic-panel-transparency/)
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
  (Installed by default on Manjaro)

### GNOME Shell theme

Follow the installation instructions on
[AdwaitaTweaks](https://github.com/jgierer12/AdwaitaTweaks) in order to install
my tweaked GNOME Shell theme.

## Maintenance

### Updating

```fish
syu  # expands to: sysupdate
```

Upgrades system, yarn global, and fish dependencies; updates firmware;
and updates fish completions.

### After changing settings or adding/removing dependencies

```fish
deps_save_all

cd $XDG_CONFIG_HOME
gaa  # expands to: git add --all
gc   # expands to: git commit
gp   # expands to: git push
```
