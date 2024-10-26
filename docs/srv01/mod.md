# lsmod

```shell
$ lsmod
Module                  Size  Used by
snd_hda_codec_hdmi     81920  1
snd_hda_codec_realtek   172032  1
intel_rapl_msr         20480  0
intel_rapl_common      32768  1 intel_rapl_msr
snd_hda_codec_generic    98304  1 snd_hda_codec_realtek
ledtrig_audio          16384  1 snd_hda_codec_generic
x86_pkg_temp_thermal    20480  0
intel_powerclamp       20480  0
coretemp               20480  0
binfmt_misc            28672  1
kvm_intel             380928  0
kvm                  1146880  1 kvm_intel
i915                 3055616  2
irqbypass              16384  1 kvm
ghash_clmulni_intel    16384  0
sha512_ssse3           49152  0
sha512_generic         16384  1 sha512_ssse3
sha256_ssse3           32768  0
sha1_ssse3             32768  0
snd_hda_intel          57344  0
snd_intel_dspcfg       36864  1 snd_hda_intel
snd_intel_sdw_acpi     20480  1 snd_intel_dspcfg
snd_hda_codec         184320  4 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec_realtek
snd_hda_core          122880  5 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec,snd_hda_codec_realtek
drm_buddy              20480  1 i915
snd_hwdep              16384  1 snd_hda_codec
aesni_intel           393216  0
drm_display_helper    184320  1 i915
crypto_simd            16384  1 aesni_intel
snd_pcm               159744  4 snd_hda_codec_hdmi,snd_hda_intel,snd_hda_codec,snd_hda_core
cryptd                 28672  2 crypto_simd,ghash_clmulni_intel
cec                    61440  2 drm_display_helper,i915
iTCO_wdt               16384  0
intel_pmc_bxt          16384  1 iTCO_wdt
rapl                   20480  0
mei_hdcp               24576  0
intel_wmi_thunderbolt    20480  0
intel_cstate           20480  0
snd_timer              49152  1 snd_pcm
iTCO_vendor_support    16384  1 iTCO_wdt
rc_core                69632  1 cec
ttm                    94208  1 i915
snd                   126976  8 snd_hda_codec_generic,snd_hda_codec_hdmi,snd_hwdep,snd_hda_intel,snd_hda_codec,snd_hda_codec_realtek,snd_timer,snd_pcm
intel_uncore          217088  0
mxm_wmi                16384  0
watchdog               45056  1 iTCO_wdt
ee1004                 20480  0
pcspkr                 16384  0
soundcore              16384  1 snd
mei_me                 53248  1
mei                   159744  3 mei_hdcp,mei_me
drm_kms_helper        212992  2 drm_display_helper,i915
intel_pmc_core         53248  0
acpi_pad              184320  0
button                 24576  0
evdev                  28672  5
sg                     40960  0
fuse                  176128  1
drm                   614400  6 drm_kms_helper,drm_display_helper,drm_buddy,i915,ttm
loop                   32768  0
efi_pstore             16384  0
configfs               57344  1
ip_tables              36864  0
x_tables               61440  1 ip_tables
autofs4                53248  2
btrfs                1794048  1
blake2b_generic        20480  0
xor                    24576  1 btrfs
raid6_pq              122880  1 btrfs
zstd_compress         294912  1 btrfs
libcrc32c              16384  1 btrfs
crc32c_generic         16384  0
hid_generic            16384  0
usbhid                 65536  0
hid                   159744  2 usbhid,hid_generic
dm_mod                184320  7
sd_mod                 65536  0
nvme                   57344  1
nvme_core             163840  3 nvme
t10_pi                 16384  2 sd_mod,nvme_core
crc32_pclmul           16384  0
crc64_rocksoft         20480  1 t10_pi
crc64                  20480  1 crc64_rocksoft
crc_t10dif             20480  1 t10_pi
ahci                   49152  0
libahci                49152  1 ahci
crc32c_intel           24576  2
crct10dif_generic      16384  0
xhci_pci               24576  0
e1000e                315392  0
libata                401408  2 libahci,ahci
xhci_hcd              315392  1 xhci_pci
i2c_i801               36864  0
crct10dif_pclmul       16384  1
i2c_smbus              20480  1 i2c_i801
crct10dif_common       16384  3 crct10dif_generic,crc_t10dif,crct10dif_pclmul
usbcore               348160  3 xhci_hcd,usbhid,xhci_pci
scsi_mod              286720  3 sd_mod,libata,sg
scsi_common            16384  3 scsi_mod,libata,sg
usb_common             16384  2 xhci_hcd,usbcore
igb                   270336  0
i2c_algo_bit           16384  2 igb,i915
dca                    16384  1 igb
video                  65536  1 i915
wmi                    36864  3 video,intel_wmi_thunderbolt,mxm_wmi
```
