

 # Creating bootable Flash Drives

I wanted to try out a new linux flavor over a weekend, so I went to my PC running Manjaro and ran a simple command looking for my favorite OS flasher BalenaEtcher

Not yet defeated I went to their website hoping for better results yet I was destraute. 
I could only find zip downloads that I did not want to touch!

Almost feeling defeated I desided how hard could it be to just do it myself? There as to be a native linux cli tool for packaging ISOs. 

After some research I found the `dd` utility here [Man7](https://man7.org/linux/man-pages/man1/dd.1.html)

This is how I did it. 

### Step 1: Setup and Verification

Firstly identified the flash drive you to make bootable with:
```
lsblk -o NAME,SIZE,MODEL,TRAN,FSUSED,FSSIZE
```
It is worth noting I have an alias for this on my computer that adds the additional data but the standard `lsblk` command will due for this case.

Identify the drive you would be using. 

I like to also double check with `fdisk -l` not a necessary step but it helps me be certain I am modifying the right device.

Nextly unmount the drive you should have identified the one from the previous steps. If you have multiple partitions on the same drive you will have to unmount all of them. You do not want the computer to be interacting with the devices filesystem right now. 

```
sudo umount <device>
```

### Step 2: The Format 

Now the funpart we can use the `dd` command. 

```
sudo dd if=~/Linux.iso of=<device> bs=4M status=progress conv=fsync
```

DD will copy the whole entire raw data of the ISO into the drive. 
you may see this and thing it looks alot like the `cp` command but while `cp` will write to a filesystem `dd` will write raw data from one place to another. With `cp` you would be writing a file that the computer will see as a usb fileystem containing a file. While with `dd` we are rewriting the usb so the `.iso`s boot structure is written to the USB. 



fsync to tell dd to wait for the contents of the drive to be the same as 




sudo mount -t ntfs3 -o ro,loop /mnt/bitlocker/dislocker-file /mnt/windows

ISO7

----

sudo dislocker -r -V /dev/sdc3 -p -- /mnt/bitlocker  

sudo mount -t ntfs3 -o ro,loop /mnt/bitlocker/dislocker-file /mnt/windows


#rsync -rahv --progress sabil /run/media/amine/OtherStuff/fff

sudo rsync -raHAXv --info=progress2 --bwlimit=10M /mnt/windows/Users/ /run/media/amine/OtherStuff/
    
    sudo dmesg -w
make a sector-level image

---ISO