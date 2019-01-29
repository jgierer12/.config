# Set config folder if unset
set -q XDG_CONFIG_HOME; or set -x XDG_CONFIG_HOME ~/.config

# Change fisher path so vendor functions aren't mixed up with custom ones
set -g fisher_path $XDG_CONFIG_HOME/fish/vendor

set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..-1]
set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..-1]

for file in $fisher_path/conf.d/*.fish
  builtin source $file 2> /dev/null
end

# Add custom bins and npm bins to PATH
for p in ~/.bin (yarn bin --offline) (yarn global bin --offline)
  if test -d $p
    set PATH $PATH $p
  end
end

# Add home, dev, desktop to CDPATH for fast navition
for p in . ~ ~/dev ~/Desktop
  if test -d $p
    set CDPATH $CDPATH $p
  end
end

# Set editor to VSCode
set -x VISUAL code
set -x EDITOR $VISUAL

# Use ripgrep for fzf
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --glob "!.git/*"'