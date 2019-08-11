function restart --argument-names action
  switch $action
    case goa
      pkill goa-identity-se
      pkill goa-daemon
    case wifi
      wifi off
      wifi on
    case system sys s '*'
      echo Rebooting system, enter password to confirm or press ctrl-c to cancel
      sudo reboot
  end
end
