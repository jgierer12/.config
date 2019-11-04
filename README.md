## Contents

- `./git`: git
- `./Code/User`: VSCode
- `./fish`: fish shell
- `./deps`:
  - System dependencies
    > **Note**: On Arch-based operating systems, system dependencies are
    > automatically installed with yay when running dependency-related commands.
    > If you'd like to prevent that, please edit `fish/conf.d/deps.fish`
    > accordingly before running these commands.
  - Firmware updates via [LVFS](https://fwupd.org/)
  - VSCode extensions
  - Global NPM packages
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
