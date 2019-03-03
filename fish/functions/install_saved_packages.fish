function install_saved_packages
  if not test -f $packages_file
    echo 'No packages file at '$packages_file
    return 1
  end

  yay -S - < $packages_file
end
