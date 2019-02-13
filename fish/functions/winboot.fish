function winboot
  set windows (sudo grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2)
  echo Rebooting into $windows

  sudo grub-reboot $windows
  sudo reboot
end
