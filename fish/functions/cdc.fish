function cdc
  git clone $argv; and cd (basename $argv .git)
end
