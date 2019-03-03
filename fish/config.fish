# Set config folder if unset
set --query XDG_CONFIG_HOME; or set --export XDG_CONFIG_HOME ~/.config

# Set editor to VSCode
set --export VISUAL code
set --export EDITOR $VISUAL

# Use ripgrep for fzf
set --export FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --glob "!.git/*"'

# Set path to VSCode extensions file
set vscode_extensions_file $XDG_CONFIG_HOME/Code/User/extensions

# Set path to pacman packages file
set packages_file $XDG_CONFIG_HOME/packages
