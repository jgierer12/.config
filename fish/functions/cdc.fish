# git clone, then cd
function cdc
  git clone $argv; and cd (basename $argv .git)
end
