function _sysupdate_log_section
  log_section green $argv
end

# Update various system components
function sysupdate
  deps_outdated_all

  confirm 'Continue?'

  if test $status -ne 0
    return $status
  end

  deps_update_all
end
