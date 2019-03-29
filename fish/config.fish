# Set config folder if unset
set --query XDG_CONFIG_HOME; or set --export XDG_CONFIG_HOME ~/.config

# Set editor to VSCode
set --export VISUAL code
set --export EDITOR $VISUAL

# Set up fuck
thefuck --alias | source

# Set up jump
jump shell | source
