# setup
timedatectl set-ntp true
cfdisk /dev/sda
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
pacstrap /mnt base base-devel linux linux-firmware nano
genfstab -U /mnt >> /mnt/etc/fstab
curl -o /mnt/setup2.sh https://sudocode1.xyz/setup2.sh
arch-chroot /mnt /bin/bash ./setup2.sh
