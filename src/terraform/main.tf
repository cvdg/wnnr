terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri = var.libvirt_uri
}

resource "libvirt_pool" "debian-pool" {
  name = var.libvirt_pool_name
  type = "dir"
  target {
    path = var.libvirt_pool_path
  } 
}

resource "libvirt_volume" "debian-base" {
  name   = "${var.vm_name}_base.img"
  pool   = libvirt_pool.debian-pool.name
  source = var.base_img_url
  format = "qcow2"
}

resource "libvirt_volume" "debian-disk-resized" {
  name           = "${var.vm_name}_resized.img"
  pool           = libvirt_pool.debian-pool.name
  base_volume_id = libvirt_volume.debian-base.id
  size           = 5361393664
}

data "template_file" "user_data" {
  template = file("${path.module}/cloud_init.yml")
  vars = {
    vm_hostname = "${var.vm_name}.local"
  }
}

resource "libvirt_cloudinit_disk" "commoninit" {
  name           = "${var.vm_name}_cloudinit.iso"
  user_data      = data.template_file.user_data.rendered #if you set network user no go
  pool           = libvirt_pool.debian-pool.name
}

resource "libvirt_domain" "domain-debian" {
  name   = var.vm_name
  memory = var.vm_memory
  vcpu   = var.vm_cpus
  running    = true
  autostart  = true
  qemu_agent = true

  cloudinit = libvirt_cloudinit_disk.commoninit.id

  network_interface {
    bridge         = "br0"
    wait_for_lease = true
   }

  disk {
    volume_id = libvirt_volume.debian-disk-resized.id
  }
}
