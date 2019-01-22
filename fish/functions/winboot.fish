function winboot
  set WINDOWS_TITLE (sudo grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2)
  echo Rebooting into $WINDOWS_TITLE
  sudo grub-reboot $WINDOWS_TITLE
  sudo reboot
end