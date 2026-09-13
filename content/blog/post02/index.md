`lsblk -f`
Identify the drive you would like to make bootable 
`lsblk -o NAME,SIZE,MODEL,TRAN,FSUSED,FSSIZE`
`sudo fdisk -l` 
i also like to do this just to be certain of the drive I am using I dont want to undo anything wrong and double check the drive

`sudo umount /dev/sda1`
unmount the drive if you have multiple partitions unmount all of them ie sda# we dont want our computer to be interacting with the filesystem of the usb right now

sudo dd if=~/Downloads/linux.iso of=/dev/sda bs=4M status=progress conv=fsync
dd copies raw data from one place to another differnt from cp how?

we are not copying the file to the usb we are rewriting the the usb drive to the disk image 

where cp will copy a file dd copys raw bites directly
The computer sees an ordinary USB filesystem containing a file called linux.iso.


The ISO's disk/boot structure gets written to the USB.

fsync to tell dd to wait for the contents of the drive to be the same as 

----

sudo dislocker -r -V /dev/sdc3 -p -- /mnt/bitlocker  

sudo mount -t ntfs3 -o ro,loop /mnt/bitlocker/dislocker-file /mnt/windows


#rsync -rahv --progress sabil /run/media/amine/OtherStuff/fff

sudo rsync -raHAXv --info=progress2 --bwlimit=10M /mnt/windows/Users/ /run/media/amine/OtherStuff/
    
    sudo dmesg -w
make a sector-level image

---