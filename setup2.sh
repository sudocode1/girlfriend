pacman -S networkmanager grub
systemctl enable NetworkManager
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
passwd
echo en_GB.UTF-8 UTF-8 > /etc/locale.gen
echo en_GB ISO-8859-1 >> /etc/locale.gen
locale-gen
echo /etc/locale.conf > LANG=en-GB.UTF-8
echo "hostname? (if you dont know what this means just put gfo)"
read hostname_user_prompt
echo $hostname_user_prompt > /etc/hostname 
ln -sf /usr/share/zoneinfo/UTC /etc/localtime
exit

