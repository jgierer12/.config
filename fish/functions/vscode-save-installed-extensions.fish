function vscode-save-installed-extensions
  code --list-extensions > $XDG_CONFIG_HOME/Code/User/extensions
end
