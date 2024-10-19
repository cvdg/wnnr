# mod

```shell
$ lsmod
Module                  Size  Used by
nf_conntrack_netlink    61440  0
nft_log                12288  0
nft_limit              16384  0
xt_limit               12288  0
xt_NFLOG               12288  0
nfnetlink_log          20480  0
xt_physdev             12288  0
veth                   40960  0
xt_multiport           16384  0
xt_addrtype            12288  0
ip_vs_rr               12288  0
dummy                  12288  0
ipt_REJECT             12288  0
nf_reject_ipv4         16384  1 ipt_REJECT
xt_tcpudp              16384  0
ip_set_hash_ipport     53248  0
xt_nat                 12288  0
xt_ipvs                16384  0
xt_set                 20480  0
ip_vs                 229376  3 ip_vs_rr,xt_ipvs
ip_set_hash_ip         49152  0
ip_set_hash_net        57344  0
ip_set                 65536  4 ip_set_hash_ip,xt_set,ip_set_hash_net,ip_set_hash_ipport
xt_MASQUERADE          16384  2
nft_chain_nat          12288  2
xt_mark                12288  6
xt_conntrack           12288  1
xt_comment             12288  13
nft_compat             24576  22
nf_tables             376832  80 nft_compat,nft_log,nft_chain_nat,nft_limit
nfnetlink              20480  5 nft_compat,nf_conntrack_netlink,nf_tables,ip_set,nfnetlink_log
iptable_filter         12288  0
iptable_nat            12288  0
nf_nat                 65536  4 xt_nat,nft_chain_nat,iptable_nat,xt_MASQUERADE
nf_conntrack          212992  6 xt_conntrack,nf_nat,xt_nat,nf_conntrack_netlink,xt_MASQUERADE,ip_vs
nf_defrag_ipv6         24576  2 nf_conntrack,ip_vs
nf_defrag_ipv4         12288  1 nf_conntrack
overlay               204800  0
br_netfilter           36864  0
bridge                385024  1 br_netfilter
stp                    12288  1 bridge
llc                    16384  2 bridge,stp
squashfs               81920  0
nvme_fabrics           36864  0
binfmt_misc            28672  1
ntb_netdev             16384  0
ntb_transport          53248  1 ntb_netdev
ntb_split              24576  0
ntb                    28672  2 ntb_transport,ntb_split
ioatdma                69632  0
dca                    16384  1 ioatdma
essiv                  16384  1
authenc                12288  1 essiv
crypto_null            16384  1 authenc
dm_crypt               61440  1
ib_core               524288  0
intel_rapl_msr         20480  0
intel_rapl_common      36864  1 intel_rapl_msr
edac_mce_amd           40960  0
kvm                  1363968  0
irqbypass              12288  1 kvm
ghash_clmulni_intel    16384  0
amdgpu              11608064  0
sha512_ssse3           45056  0
sha256_ssse3           32768  2
sha1_ssse3             32768  0
snd_hda_codec_realtek   196608  1
snd_hda_codec_generic   114688  1 snd_hda_codec_realtek
snd_hda_codec_hdmi     94208  1
snd_hda_intel          61440  0
snd_intel_dspcfg       36864  1 snd_hda_intel
drm_exec               16384  1 amdgpu
amdxcp                 12288  1 amdgpu
drm_buddy              20480  1 amdgpu
aesni_intel           360448  3
snd_hda_codec         225280  4 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec_realtek
gpu_sched              57344  1 amdgpu
crypto_simd            16384  1 aesni_intel
drm_suballoc_helper    12288  1 amdgpu
cryptd                 28672  3 crypto_simd,ghash_clmulni_intel
snd_hda_core          147456  5 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec,snd_hda_codec_realtek
drm_display_helper    233472  1 amdgpu
eeepc_wmi              12288  0
snd_hwdep              20480  1 snd_hda_codec
cec                    69632  1 drm_display_helper
asus_wmi               81920  1 eeepc_wmi
snd_pcm               192512  4 snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec,snd_hda_core
evdev                  28672  2
rc_core                73728  1 cec
rapl                   20480  0
battery                28672  1 asus_wmi
snd_timer              53248  1 snd_pcm
ledtrig_audio          12288  2 snd_hda_codec_generic,asus_wmi
drm_ttm_helper         12288  1 amdgpu
sparse_keymap          12288  1 asus_wmi
ttm                   110592  2 amdgpu,drm_ttm_helper
platform_profile       12288  1 asus_wmi
rfkill                 40960  2 asus_wmi
wmi_bmof               12288  0
snd                   155648  8 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hwdep,snd_hda_intel,snd_hda_codec,snd_hda_codec_realtek,snd_timer,snd_pcm
drm_kms_helper        270336  3 drm_display_helper,amdgpu
pcspkr                 12288  0
sp5100_tco             16384  0
i2c_algo_bit           12288  1 amdgpu
video                  77824  2 asus_wmi,amdgpu
soundcore              16384  1 snd
ccp                   147456  0
watchdog               49152  1 sp5100_tco
k10temp                12288  0
button                 24576  0
sg                     45056  0
nfsd                  897024  9
auth_rpcgss           192512  1 nfsd
nfs_acl                16384  1 nfsd
lockd                 159744  1 nfsd
grace                  12288  2 nfsd,lockd
loop                   36864  0
drm                   802816  11 gpu_sched,drm_kms_helper,drm_exec,drm_suballoc_helper,drm_display_helper,drm_buddy,amdgpu,drm_ttm_helper,ttm,amdxcp
efi_pstore             12288  0
dm_mod                217088  2 dm_crypt
configfs               65536  1
sunrpc                884736  23 nfsd,auth_rpcgss,lockd,nfs_acl
ip_tables              28672  2 iptable_filter,iptable_nat
x_tables               61440  18 xt_conntrack,iptable_filter,nft_compat,xt_multiport,xt_NFLOG,xt_tcpudp,xt_addrtype,xt_physdev,xt_nat,xt_ipvs,xt_comment,xt_set,ipt_REJECT,ip_tables,iptable_nat,xt_limit,xt_MASQUERADE,xt_mark
autofs4                57344  2
zfs                  6975488  31
spl                   196608  1 zfs
efivarfs               24576  1
raid10                 77824  0
raid456               200704  0
async_raid6_recov      20480  1 raid456
async_memcpy           16384  2 raid456,async_raid6_recov
async_pq               16384  2 raid456,async_raid6_recov
async_xor              16384  3 async_pq,raid456,async_raid6_recov
async_tx               16384  5 async_pq,async_memcpy,async_xor,raid456,async_raid6_recov
xor                    20480  1 async_xor
raid6_pq              122880  3 async_pq,raid456,async_raid6_recov
libcrc32c              12288  5 nf_conntrack,nf_nat,nf_tables,raid456,ip_vs
crc32c_generic         12288  0
raid0                  24576  0
multipath              16384  0
linear                 16384  0
hid_generic            12288  0
raid1                  57344  1
sd_mod                 86016  4
usbhid                 77824  0
hid                   176128  2 usbhid,hid_generic
md_mod                225280  7 raid1,raid10,raid0,linear,raid456,multipath
ahci                   49152  4
r8169                 114688  0
ahciem                 12288  1 ahci
xhci_pci               24576  0
nvme                   57344  4
libahci                61440  1 ahci
realtek                40960  1
nvme_core             196608  6 nvme,nvme_fabrics
mdio_devres            12288  1 r8169
xhci_hcd              356352  1 xhci_pci
crc32_pclmul           12288  0
libata                471040  3 libahci,ahci,ahciem
t10_pi                 20480  2 sd_mod,nvme_core
crc32c_intel           16384  1
libphy                241664  3 r8169,mdio_devres,realtek
crc64_rocksoft         16384  1 t10_pi
i2c_piix4              28672  0
crc64                  16384  1 crc64_rocksoft
crc_t10dif             16384  1 t10_pi
crct10dif_generic      12288  0
usbcore               409600  3 xhci_hcd,usbhid,xhci_pci
scsi_mod              327680  4 sd_mod,libata,sg,ahciem
crct10dif_pclmul       12288  1
crct10dif_common       12288  3 crct10dif_generic,crc_t10dif,crct10dif_pclmul
usb_common             20480  2 xhci_hcd,usbcore
scsi_common            16384  5 scsi_mod,sd_mod,libata,sg,ahciem
wmi                    40960  3 video,asus_wmi,wmi_bmof
gpio_amdpt             16384  0
gpio_generic           20480  1 gpio_amdpt
```