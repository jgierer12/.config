function _sysupdate_log_section
  log_section green $argv
end

function sysupdate
  sudo echo noop > /dev/null # Ask for root password

  _sysupdate_log_section 'System deps'
  if type --quiet yay; and test -z "$SKIP_SYSTEM_DEPS"
    yay --sync --sysupgrade --refresh --noconfirm
  end

  _sysupdate_log_section 'Firmware'
  fwupdmgr refresh; and fwupdmgr update

  _sysupdate_log_section 'Fish completions'
  fish_update_completions
end
