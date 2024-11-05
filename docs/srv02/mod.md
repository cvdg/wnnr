# lsmod

```shell
$ lsmod
Module                  Size  Used by
msr                    16384  0
bridge                311296  0
stp                    16384  1 bridge
llc                    16384  2 bridge,stp
qrtr                   49152  2
cmac                   16384  3
algif_hash             16384  1
algif_skcipher         16384  1
af_alg                 36864  6 algif_hash,algif_skcipher
bnep                   28672  2
binfmt_misc            28672  1
snd_hda_codec_hdmi     81920  1
nls_ascii              16384  1
snd_hda_codec_realtek   172032  1
nls_cp437              20480  1
snd_hda_codec_generic    98304  1 snd_hda_codec_realtek
vfat                   24576  1
fat                    90112  1 vfat
ledtrig_audio          16384  1 snd_hda_codec_generic
snd_sof_pci_intel_cnl    16384  0
intel_rapl_msr         20480  0
snd_sof_intel_hda_common   188416  1 snd_sof_pci_intel_cnl
intel_rapl_common      32768  1 intel_rapl_msr
soundwire_intel        49152  1 snd_sof_intel_hda_common
x86_pkg_temp_thermal    20480  0
soundwire_generic_allocation    16384  1 soundwire_intel
intel_powerclamp       20480  0
btusb                  69632  0
soundwire_cadence      40960  1 soundwire_intel
btrtl                  28672  1 btusb
coretemp               20480  0
snd_sof_intel_hda      20480  1 snd_sof_intel_hda_common
btbcm                  24576  1 btusb
snd_sof_pci            24576  2 snd_sof_intel_hda_common,snd_sof_pci_intel_cnl
btintel                45056  1 btusb
iwlmvm                385024  0
kvm_intel             380928  0
btmtk                  16384  1 btusb
snd_sof_xtensa_dsp     16384  1 snd_sof_intel_hda_common
i915                 3055616  2
kvm                  1146880  1 kvm_intel
bluetooth             958464  29 btrtl,btmtk,btintel,btbcm,bnep,btusb
snd_sof               278528  2 snd_sof_pci,snd_sof_intel_hda_common
mac80211             1175552  1 iwlmvm
snd_sof_utils          20480  1 snd_sof
soundwire_bus         102400  3 soundwire_intel,soundwire_generic_allocation,soundwire_cadence
irqbypass              16384  1 kvm
snd_soc_skl           184320  0
snd_soc_hdac_hda       24576  2 snd_sof_intel_hda_common,snd_soc_skl
ghash_clmulni_intel    16384  0
snd_hda_ext_core       40960  3 snd_sof_intel_hda_common,snd_soc_hdac_hda,snd_soc_skl
sha256_ssse3           32768  0
snd_soc_sst_ipc        20480  1 snd_soc_skl
sha1_ssse3             32768  0
snd_soc_sst_dsp        40960  1 snd_soc_skl
snd_soc_acpi_intel_match    81920  3 snd_sof_intel_hda_common,snd_soc_skl,snd_sof_pci_intel_cnl
snd_soc_acpi           16384  3 snd_soc_acpi_intel_match,snd_sof_intel_hda_common,snd_soc_skl
jitterentropy_rng      16384  1
snd_soc_core          352256  5 soundwire_intel,snd_sof,snd_sof_intel_hda_common,snd_soc_hdac_hda,snd_soc_skl
sha512_ssse3           49152  1
sha512_generic         16384  1 sha512_ssse3
snd_compress           28672  1 snd_soc_core
libarc4                16384  1 mac80211
snd_hda_intel          57344  0
snd_intel_dspcfg       36864  4 snd_hda_intel,snd_sof,snd_sof_intel_hda_common,snd_soc_skl
snd_intel_sdw_acpi     20480  2 snd_sof_intel_hda_common,snd_intel_dspcfg
aesni_intel           393216  4
ctr                    16384  0
snd_hda_codec         184320  7 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec_realtek,snd_soc_hdac_hda,snd_soc_skl,snd_sof_intel_hda
drm_buddy              20480  1 i915
crypto_simd            16384  1 aesni_intel
iwlwifi               360448  1 iwlmvm
uvcvideo              131072  0
snd_hda_core          122880  10 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hda_intel,snd_hda_ext_core,snd_hda_codec,snd_hda_codec_realtek,snd_sof_intel_hda_common,snd_soc_hdac_hda,snd_soc_skl,snd_sof_intel_hda
drbg                   45056  1
cryptd                 28672  3 crypto_simd,ghash_clmulni_intel
drm_display_helper    184320  1 i915
snd_hwdep              16384  1 snd_hda_codec
videobuf2_vmalloc      20480  1 uvcvideo
ansi_cprng             16384  0
rapl                   20480  0
videobuf2_memops       20480  1 videobuf2_vmalloc
cec                    61440  2 drm_display_helper,i915
videobuf2_v4l2         36864  1 uvcvideo
snd_pcm               159744  11 snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec,soundwire_intel,snd_sof,snd_sof_intel_hda_common,snd_compress,snd_soc_core,snd_sof_utils,snd_soc_skl,snd_hda_core
iTCO_wdt               16384  0
intel_cstate           20480  0
videobuf2_common       73728  4 videobuf2_vmalloc,videobuf2_v4l2,uvcvideo,videobuf2_memops
ecdh_generic           16384  2 bluetooth
mei_hdcp               24576  0
rc_core                69632  1 cec
intel_pmc_bxt          16384  1 iTCO_wdt
snd_timer              49152  1 snd_pcm
ecc                    40960  1 ecdh_generic
cfg80211             1146880  3 iwlmvm,iwlwifi,mac80211
crc16                  16384  1 bluetooth
videodev              294912  3 videobuf2_v4l2,uvcvideo,videobuf2_common
intel_uncore          217088  0
ee1004                 20480  0
wmi_bmof               16384  0
snd                   126976  11 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hwdep,snd_hda_intel,snd_hda_codec,snd_hda_codec_realtek,snd_sof,snd_timer,snd_compress,snd_soc_core,snd_pcm
ttm                    94208  1 i915
iTCO_vendor_support    16384  1 iTCO_wdt
pcspkr                 16384  0
mei_me                 53248  1
rfkill                 36864  7 iwlmvm,bluetooth,cfg80211
mc                     81920  4 videodev,videobuf2_v4l2,uvcvideo,videobuf2_common
watchdog               45056  1 iTCO_wdt
soundcore              16384  1 snd
drm_kms_helper        212992  2 drm_display_helper,i915
mei                   159744  3 mei_hdcp,mei_me
i2c_algo_bit           16384  1 i915
intel_pch_thermal      20480  0
intel_hid              28672  0
intel_pmc_core         53248  0
ac                     20480  0
acpi_pad              184320  0
sparse_keymap          16384  1 intel_hid
button                 24576  0
joydev                 28672  0
evdev                  28672  6
serio_raw              20480  0
sg                     40960  0
vhost_net              36864  0
tun                    61440  1 vhost_net
drm                   614400  6 drm_kms_helper,drm_display_helper,drm_buddy,i915,ttm
vhost                  57344  1 vhost_net
vhost_iotlb            16384  1 vhost
tap                    28672  1 vhost_net
fuse                  176128  1
loop                   32768  0
efi_pstore             16384  0
configfs               57344  1
ip_tables              36864  0
x_tables               61440  1 ip_tables
autofs4                53248  2
btrfs                1794048  1
blake2b_generic        20480  0
zstd_compress         294912  1 btrfs
efivarfs               24576  1
raid10                 65536  0
raid456               180224  0
async_raid6_recov      24576  1 raid456
async_memcpy           20480  2 raid456,async_raid6_recov
async_pq               20480  2 raid456,async_raid6_recov
async_xor              20480  3 async_pq,raid456,async_raid6_recov
async_tx               20480  5 async_pq,async_memcpy,async_xor,raid456,async_raid6_recov
xor                    24576  2 async_xor,btrfs
raid6_pq              122880  4 async_pq,btrfs,raid456,async_raid6_recov
libcrc32c              16384  2 btrfs,raid456
crc32c_generic         16384  0
raid1                  53248  0
raid0                  24576  0
multipath              20480  0
linear                 20480  0
md_mod                192512  6 raid1,raid10,raid0,linear,raid456,multipath
sd_mod                 65536  0
dm_mod                184320  7
ahci                   49152  0
xhci_pci               24576  0
libahci                49152  1 ahci
nvme                   57344  2
xhci_hcd              315392  1 xhci_pci
libata                401408  2 libahci,ahci
nvme_core             163840  4 nvme
rtsx_pci_sdmmc         32768  0
t10_pi                 16384  2 sd_mod,nvme_core
usbcore               348160  4 xhci_hcd,uvcvideo,btusb,xhci_pci
scsi_mod              286720  3 sd_mod,libata,sg
r8169                  94208  0
mmc_core              212992  1 rtsx_pci_sdmmc
crc64_rocksoft         20480  1 t10_pi
crc64                  20480  1 crc64_rocksoft
crc_t10dif             20480  1 t10_pi
realtek                36864  1
crct10dif_generic      16384  0
i2c_i801               36864  0
crct10dif_pclmul       16384  1
mdio_devres            16384  1 r8169
psmouse               184320  0
libphy                180224  3 r8169,mdio_devres,realtek
crc32_pclmul           16384  0
crc32c_intel           24576  2
rtsx_pci              114688  1 rtsx_pci_sdmmc
i2c_smbus              20480  1 i2c_i801
crct10dif_common       16384  3 crct10dif_generic,crc_t10dif,crct10dif_pclmul
usb_common             16384  3 xhci_hcd,usbcore,uvcvideo
scsi_common            16384  3 scsi_mod,libata,sg
battery                28672  0
video                  65536  1 i915
wmi                    36864  2 video,wmi_bmof
```
