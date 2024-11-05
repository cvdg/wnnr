#!/bin/bash

set -e

NAME=${1:-srv00}

REAL="$(readlink -f $0)"
BIN="$(dirname ${REAL})"
SRC="$(dirname ${BIN})"
BASE="$(dirname ${SRC})"
DEST="${BASE}/docs/${NAME}"

echo "${DEST}"

R="${DEST}"

if [ ! -d ${R} ] ; then
  mkdir ${R}
fi



echo '# lsblk' > ${R}/blk.md
echo '' >> ${R}/blk.md
echo '```shell' >> ${R}/blk.md
echo '$ lsblk' >> ${R}/blk.md

ssh ${NAME} lsblk | tee -a ${R}/blk.md

echo '```' >> ${R}/blk.md



echo '# lscpu' > ${R}/cpu.md
echo '' >> ${R}/cpu.md
echo '```shell' >> ${R}/cpu.md
echo '$ lscpu' >> ${R}/cpu.md

ssh ${NAME} lscpu | tee -a ${R}/cpu.md

echo '```' >> ${R}/cpu.md



echo '# lsipc' > ${R}/ipc.md
echo '' >> ${R}/ipc.md
echo '```shell' >> ${R}/ipc.md
echo '$ lsipc' >> ${R}/ipc.md

ssh ${NAME} lsipc | tee -a ${R}/ipc.md

echo '```' >> ${R}/ipc.md



echo '# lsirq' > ${R}/irq.md
echo '' >> ${R}/irq.md
echo '```shell' >> ${R}/irq.md
echo '$ lsirq' >> ${R}/irq.md

ssh ${NAME} lsirq | tee -a ${R}/irq.md

echo '```' >> ${R}/irq.md



echo '# lslogins' > ${R}/logins.md
echo '' >> ${R}/logins.md
echo '```shell' >> ${R}/logins.md
echo '$ lslogins' >> ${R}/logins.md

ssh ${NAME} lslogins | tee -a ${R}/logins.md

echo '```' >> ${R}/logins.md



echo '# lsb_release' > ${R}/lsb_release.md
echo '' >> ${R}/lsb_release.md
echo '```shell' >> ${R}/lsb_release.md
echo '$ lsb_release -a' >> ${R}/lsb_release.md

ssh ${NAME} lsb_release -a | tee -a ${R}/lsb_release.md

echo '```' >> ${R}/lsb_release.md



echo '# lsmem' > ${R}/mem.md
echo '' >> ${R}/mem.md
echo '```shell' >> ${R}/mem.md
echo '$ lsmem' >> ${R}/mem.md

ssh ${NAME} lsmem | tee -a ${R}/mem.md

echo '```' >> ${R}/mem.md



echo '# lsmod' > ${R}/mod.md
echo '' >> ${R}/mod.md
echo '```shell' >> ${R}/mod.md
echo '$ lsmod' >> ${R}/mod.md

ssh ${NAME} lsmod | tee -a ${R}/mod.md

echo '```' >> ${R}/mod.md



echo '# lspci' > ${R}/pci.md
echo '' >> ${R}/pci.md
echo '```shell' >> ${R}/pci.md
echo '$ lspci' >> ${R}/pci.md

ssh ${NAME} lspci | tee -a ${R}/pci.md

echo '```' >> ${R}/pci.md
