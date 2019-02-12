# Set config folder if unset
set --query XDG_CONFIG_HOME; or set --export XDG_CONFIG_HOME ~/.config

# Change fisher path so vendor functions aren't mixed up with custom ones
set --global fisher_path $XDG_CONFIG_HOME/fish/vendor

set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
  builtin source $file 2> /dev/null
end

# Add custom bins and npm bins to PATH
for p in ~/.bin (yarn bin --offline) (yarn global bin --offline)
  test -d $p; and set PATH $PATH $p
end

# Add home, dev, desktop to CDPATH for fast navition
for p in . ~ ~/dev ~/Desktop
  test -d $p; and set CDPATH $CDPATH $p
end

# Set editor to VSCode
set --export VISUAL code
set --export EDITOR $VISUAL

# Use ripgrep for fzf
set --export FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --glob "!.git/*"'

# Emoji width (prevents glitches in GNOME terminal)
if test "$TERM_PROGRAM" = "vscode"
  set fish_emoji_width 1
else
  set fish_emoji_width 2
end

# Theming
set pure_symbol_horizontal_bar '-'
set symbol_prompt '➜'
new-random-emoji
