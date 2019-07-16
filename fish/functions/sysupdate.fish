function _sysupdate_log_section
  log_section green $argv
end

# Update various system components
function sysupdate
  sudo echo noop > /dev/null # Ask for root password

  _sysupdate_log_section 'System deps'
  if type --quiet pikaur; and test -z "$SKIP_SYSTEM_DEPS"
    pikaur --sync --sysupgrade --refresh --noconfirm
  end

  _sysupdate_log_section 'Firmware'
  fwupdmgr refresh; and fwupdmgr update

  _sysupdate_log_section 'Yarn global packages'
  yarn global upgrade

  _sysupdate_log_section 'Fisher packages'
  fisher

  _sysupdate_log_section 'Fish completions'
  fish_update_completions
end
