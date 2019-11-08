# Set config folder if unset
set --query XDG_CONFIG_HOME; or set --export XDG_CONFIG_HOME ~/.config

set deps_path $XDG_CONFIG_HOME/deps
mkdir --parents $deps_path

# Commands
set _deps_cmd_code code
set _deps_cmd_yay yay --color=always
set _deps_cmd_npm sudo npm
set _deps_cmd_fisher fisher
set _deps_cmd_fwupdmgr fwupdmgr --no-unreported-check
set _deps_cmd_fish_update_completions fish_update_completions

# Utils
function deps_file
  set name $argv[1]
  echo $deps_path/$name.list
end

function _deps_get
  set name $argv[1]
  cat (deps_file $name)
end

function _deps_set
  set name $argv[1]
  set deps $argv[2..-1]

  string join \n $deps > (deps_file $name)
  echo 'Saved '(count $deps)' dependencies to '(deps_file $name)
end

function _deps_log_outdated
  set name $argv[1]
  set success $argv[2]
  set outdated $argv[3..-1]

  if test $success -eq 0
    echo (set_color --dim)"Can't determine outdated $name dependencies"(set_color normal)
  else if test -z $outdated
    echo (set_color green)"No outdated $name dependencies"(set_color normal)
  else
    echo (set_color yellow)(count $outdated)" outdated $name dependencies:"(set_color normal)
    echo
    printf ' %s\n' $outdated
  end
end

function _deps_log_section
  log_section cyan $argv
end

function _deps_update_fish_completions
  _deps_log_section fish_completions
  $_deps_cmd_fish_update_completions
end

# Forall
function _deps_for_all
  sudo echo noop > /dev/null # Ask for root password

  set action $argv[1]
  for name in system firmware vscode npm_global fish
    _deps_log_section $name
    deps_$action\_$name
  end
end

function deps_install_all
  _deps_for_all install
  _deps_update_fish_completions
end

function deps_save_all
  _deps_for_all save
end

function deps_outdated_all
  _deps_for_all outdated
end

function deps_update_all
  _deps_for_all update
  _deps_update_fish_completions
end

# Install
function deps_install_system
  $_deps_cmd_yay --sync --needed --refresh --noconfirm (_deps_get system)
end

function deps_install_firmware
  echo (set_color --dim)"No new firmware to install"(set_color normal)
end

function deps_install_vscode
  for ext in (_deps_get vscode)
    $_deps_cmd_code --install-extension $ext
  end
end

function deps_install_npm_global
  $_deps_cmd_npm install --global (_deps_get npm_global)
end

function deps_install_fish
  $_deps_cmd_fisher add (_deps_get fish)
end

# Save
function deps_save_system
  _deps_set system ($_deps_cmd_yay --query --explicit --quiet)
end

function deps_save_firmware
  echo (set_color --dim)"No firmware to save"(set_color normal)
end

function deps_save_vscode
  _deps_set vscode ($_deps_cmd_code --list-extensions)
end

function deps_save_npm_global
  set regexp '^/usr/lib/node_modules/(.+)$'
  set deps ($_deps_cmd_npm list --global --parseable --depth 0 | rg --replace '$1' --regexp $regexp)

  _deps_set npm_global $deps
end

function deps_save_fish
  _deps_set fish ($_deps_cmd_fisher ls)
end

# Outdated
function deps_outdated_system
  $_deps_cmd_yay --sync --refresh
  echo
  _deps_log_outdated system 1 ($_deps_cmd_yay --query --upgrades)
end

function deps_outdated_firmware
  $_deps_cmd_fwupdmgr refresh
  echo
  _deps_log_outdated firmware 1 ($_deps_cmd_fwupdmgr get-updates)
end

function deps_outdated_vscode
  _deps_log_outdated vscode 0
end

function deps_outdated_npm_global
  _deps_log_outdated npm_global 1 ($_deps_cmd_npm outdated --global)
end

function deps_outdated_fish
  _deps_log_outdated fish 0
end

# Update
function deps_update_system
  $_deps_cmd_yay --sync --sysupgrade --refresh --noconfirm
end

function deps_update_firmware
  $_deps_cmd_fwupdmgr refresh
  $_deps_cmd_fwupdmgr update
end

function deps_update_vscode
  echo (set_color --dim)"VSCode extensions are updated automatically"(set_color normal)
end

function deps_update_npm_global
  $_deps_cmd_npm upgrade --global
end

function deps_update_fish
  $_deps_cmd_fisher
end
