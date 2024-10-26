#!/bin/bash

set -e

R=${1:-srv00}

echo ${R}

if [ ! -d ${R} ] ; then
  mkdir ${R}
fi



echo '# lsblk' > ${R}/blk.md
echo '' >> ${R}/blk.md
echo '```shell' >> ${R}/blk.md
echo '$ lsblk' >> ${R}/blk.md

ssh ${R} lsblk | tee -a ${R}/blk.md

echo '```' >> ${R}/blk.md



echo '# lscpu' > ${R}/cpu.md
echo '' >> ${R}/cpu.md
echo '```shell' >> ${R}/cpu.md
echo '$ lscpu' >> ${R}/cpu.md

ssh ${R} lscpu | tee -a ${R}/cpu.md

echo '```' >> ${R}/cpu.md



echo '# lsipc' > ${R}/ipc.md
echo '' >> ${R}/ipc.md
echo '```shell' >> ${R}/ipc.md
echo '$ lsipc' >> ${R}/ipc.md

ssh ${R} lsipc | tee -a ${R}/ipc.md

echo '```' >> ${R}/ipc.md



echo '# lsirq' > ${R}/irq.md
echo '' >> ${R}/irq.md
echo '```shell' >> ${R}/irq.md
echo '$ lsirq' >> ${R}/irq.md

ssh ${R} lsirq | tee -a ${R}/irq.md

echo '```' >> ${R}/irq.md



echo '# lslogins' > ${R}/logins.md
echo '' >> ${R}/logins.md
echo '```shell' >> ${R}/logins.md
echo '$ lslogins' >> ${R}/logins.md

ssh ${R} lslogins | tee -a ${R}/logins.md

echo '```' >> ${R}/logins.md



echo '# lsb_release' > ${R}/lsb_release.md
echo '' >> ${R}/lsb_release.md
echo '```shell' >> ${R}/lsb_release.md
echo '$ lsb_release -a' >> ${R}/lsb_release.md

ssh ${R} lsb_release -a | tee -a ${R}/lsb_release.md

echo '```' >> ${R}/lsb_release.md



echo '# lsmem' > ${R}/mem.md
echo '' >> ${R}/mem.md
echo '```shell' >> ${R}/mem.md
echo '$ lsmem' >> ${R}/mem.md

ssh ${R} lsmem | tee -a ${R}/mem.md

echo '```' >> ${R}/mem.md



echo '# lsmod' > ${R}/mod.md
echo '' >> ${R}/mod.md
echo '```shell' >> ${R}/mod.md
echo '$ lsmod' >> ${R}/mod.md

ssh ${R} lsmod | tee -a ${R}/mod.md

echo '```' >> ${R}/mod.md



echo '# lspci' > ${R}/pci.md
echo '' >> ${R}/pci.md
echo '```shell' >> ${R}/pci.md
echo '$ lspci' >> ${R}/pci.md

ssh ${R} lspci | tee -a ${R}/pci.md

echo '```' >> ${R}/pci.md

