function vscode_save_installed_extensions
  code --list-extensions > $XDG_CONFIG_HOME/Code/User/extensions
end
