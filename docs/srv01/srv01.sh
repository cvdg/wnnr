#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt autoremove

sudo apt install --no-install-recommends qemu-system libvirt-clients libvirt-daemon-system
sudo adduser cees libvirt
