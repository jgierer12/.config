alias l "ll"
alias vim "nvim"
alias nup "npx updates"

alias d "cd ~/dev"
alias dt "cd ~/Desktop"

set -x VISUAL code
set -x EDITOR $VISUAL

set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --glob "!.git/*"'

set -x PATH $PATH ~/.bin (yarn global bin)