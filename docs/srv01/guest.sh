#!/bin/bash

export LIBVIRT_DEFAULT_URI='qemu:///system'

NAME=${1:-guest01}

virt-install \
	--name ${NAME} \
	--virt-type kvm \
	--location https://deb.debian.org/debian/dists/bookworm/main/installer-amd64/ \
	--os-variant debian11 \
	--disk size=16 \
	--memory 1024 \
	--graphics none \
	--network network=bridge0,model=virtio \
	--console pty,target_type=serial \
	--extra-args "console=ttyS0"
