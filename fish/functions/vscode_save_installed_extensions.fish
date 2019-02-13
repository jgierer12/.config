function vscode_save_installed_extensions
  set exts (code --list-extensions)
  string join \n $exts > $vscode_extensions_file
end
