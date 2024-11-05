# lsblk

```shell
$ lsblk
NAME         MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda            8:0    0 931.5G  0 disk 
└─sda1         8:1    0 931.5G  0 part 
nvme0n1      259:0    0 465.8G  0 disk 
├─nvme0n1p1  259:1    0  1023M  0 part /boot/efi
└─nvme0n1p2  259:2    0 464.8G  0 part 
  ├─vg0-swap 254:0    0    32G  0 lvm  [SWAP]
  └─vg0-root 254:1    0    32G  0 lvm  /
```
