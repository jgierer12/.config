if [ -z "$XDG_CONFIG_HOME" ] ; then
  XDG_CONFIG_HOME="$HOME/.config"
fi

cd $XDG_CONFIG_HOME

git init
git remote add origin https://github.com/jgierer12/.config.git
git fetch
git checkout --force --track origin/master

if command -v pacman > /dev/null && [ -z "$SKIP_SYSTEM_DEPS" ] ; then
  sudo pacman --sync yay fish
fi

if command -v fish > /dev/null; then
  fish --command 'deps_install_system; deps_install_all; sysupdate'
fi
