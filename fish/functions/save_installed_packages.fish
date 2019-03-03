function save_installed_packages
  set pkgs (yay -Qqe)
  string join \n $pkgs > $packages_file

  echo 'Saved '(count $pkgs)' packages to '$packages_file
end
