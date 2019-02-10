function vscode-install-saved-extensions
  set --local extfile $XDG_CONFIG_HOME/Code/User/extensions
  if not test -f $extfile
    echo "No extension file"
    return 1
  end
  while read ext
    code --install-extension $ext
  end < $extfile
end