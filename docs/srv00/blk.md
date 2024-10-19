# blk

```shell
$ lsblk
NAME        MAJ:MIN RM   SIZE RO TYPE  MOUNTPOINTS
sda           8:0    0   3.6T  0 disk
└─sda1        8:1    0   3.6T  0 part
sdb           8:16   0   3.6T  0 disk
└─sdb1        8:17   0   3.6T  0 part
sdc           8:32   0   3.6T  0 disk
└─sdc1        8:33   0   3.6T  0 part
sdd           8:48   0   3.6T  0 disk
└─sdd1        8:49   0   3.6T  0 part
nvme1n1     259:0    0 931.5G  0 disk
├─nvme1n1p1 259:1    0     1M  0 part
├─nvme1n1p2 259:2    0   512M  0 part
├─nvme1n1p3 259:3    0   915G  0 part
└─nvme1n1p4 259:4    0    16G  0 part
  └─md127     9:127  0    16G  0 raid1
    └─md127 253:0    0    16G  0 crypt
nvme0n1     259:5    0 931.5G  0 disk
├─nvme0n1p1 259:6    0     1M  0 part
├─nvme0n1p2 259:7    0   512M  0 part
├─nvme0n1p3 259:8    0   915G  0 part
└─nvme0n1p4 259:9    0    16G  0 part
  └─md127     9:127  0    16G  0 raid1
    └─md127 253:0    0    16G  0 crypt
```