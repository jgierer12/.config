# Set config folder if unset
set --query XDG_CONFIG_HOME; or set --export XDG_CONFIG_HOME ~/.config

# Set editor to VSCode
set --export VISUAL code
set --export EDITOR $VISUAL

# Use ripgrep for fzf
set --export FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --glob "!.git/*"'
