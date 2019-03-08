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

## Maintenance

### Updating

```fish
syu  # expands to: sysupdate
```

Installs all saved dependencies; upgrades system, yarn global, and fish
dependencies; updates firmware; updates node; and updates fish completions.

### After changing settings or adding/removing dependencies

```fish
deps_save_all

cfg  # expands to: cd ~/.config
gaa  # expands to: git add --all
gc   # expands to: git commit
gp   # expands to: git push
```
