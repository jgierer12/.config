set deps_path $XDG_CONFIG_HOME/deps
mkdir --parents $deps_path

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

function _deps_log_section
  log_section cyan $argv
end

# Install
function deps_install_system
  if type --quiet yay; and test -z "$SKIP_SYSTEM_DEPS"
    yay --sync --needed --refresh --noconfirm (_deps_get system)
  end
end

function deps_install_vscode
  for ext in (_deps_get vscode)
    code --install-extension $ext
  end
end

function deps_install_yarn_global
  yarn global add (_deps_get yarn_global)
end

function deps_install_fish
  fisher add (_deps_get fish)
end

function deps_install_all
  for name in system vscode yarn_global fish
    _deps_log_section $name
    deps_install_$name
  end
end

# Save
function deps_save_system
  _deps_set system (yay --query --explicit --quiet)
end

function deps_save_vscode
  _deps_set vscode (code --list-extensions)
end

function deps_save_yarn_global
  set regexp '^.+"(.+)@.+$'
  set deps (yarn global list | rg --replace '$1' --regexp $regexp)

  _deps_set yarn_global $deps
end

function deps_save_fish
  _deps_set fish (fisher ls)
end

function deps_save_all
  for name in system vscode yarn_global fish
    _deps_log_section $name
    deps_save_$name
  end
end
