alias l "ll"
alias vim "nvim"
alias d "cd ~/dev"
alias nup "npx updates"

set -x VISUAL code
set -x EDITOR $VISUAL

set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --smart-case --glob "!.git/*"'

set -x PATH $PATH ~/.bin