function vscode_install_saved_extensions
  if not test -f $vscode_extensions_file
    echo 'No extensions file at '$vscode_extensions_file
    return 1
  end

  while read ext
    code --install-extension $ext
  end < $vscode_extensions_file
end
