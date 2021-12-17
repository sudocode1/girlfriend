# girlfriend
girlfriend linux: send help

## information 
girlfriend linux is a for-fun and relax linux distro\*, made by me and [swishyy](https://github.com/swishyy)

you can find stuff like partition configuration and the installation guide below

\*its literally just arch with stuff preconfigured for you so its not _really_ a linux distro but whatever

## partition configuration
if you want to configure your paritions beforehand, or are just interested in how the partitions should be configured, or for any other reason, heres how the partitioning is set up

the configuration is somewhat different to how people regularly configure partitions


| partition | size | intended use | bootable |
| --- | ----------- | ---------- | ------------ | 
| /dev/sd\*1 | 128M | this is used for GRUB, the bootloader | yes | 
| /dev/sd\*2 | Everything else | this is general storage | no |

## installation
### requirements
- an arch iso on a usb or a disc
- an ethernet connection (or knowledge of wifi-menu)
- above 128MB of storage (how would you not have this already)

### steps
1. go to your boot menu and boot from your arch usb/disc
2. press enter on the first option
3. you will be booted into archiso, now you need to connect internet (either via ethernet or using wifi-menu)
4. run `curl -o setup.sh https://sudocode1.xyz/setup.sh` to download setup.sh
5. do any changes to setup.sh if you need to change anything (and if you know how to)
6. run `bash ./setup.sh` to run setup.sh
7. youll be prompted with `cfdisk`, select `dos` as the type, then you will be prompted with free space if you wiped your drive on `/dev/sda` or with a few partitions
8. if you have some partitions, delete all of them
9. once youve got free space, create a 128M partition by highlighting new and pressing enter, then enter `128M` and press enter to create a 128M partition, then select bootable and press enter
10. press the down arrow so youre highlighting free space and press enter and press enter again
11. use the arrow keys to highlight write and press enter and type `yes` and press enter
12. highlight quit and press enter
13. if youre prompted if you want to continue installation, just press `y` and press enter
14. eventually you will be prompted for a password and a hostname, enter these however you want to
15. once you have reached the end, type `umount -R /mnt`, press enter and then `reboot` and press enter
16. boot into your drive and youll be on girlfriend linux
