# Workaround for https://github.com/fish-shell/fish-shell/issues/3537
bind \cc 'commandline ""'

function _keybinding_j
  set cl (commandline)
  if test -z "$cl"
    # If the command line is empty, insert `j `
    commandline 'j '
  else
    # Otherwise, append `j`
    commandline $cl'j'
  end
end
bind j _keybinding_j
