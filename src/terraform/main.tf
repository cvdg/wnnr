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

resource "libvirt_pool" "pool" {
  name = var.libvirt_pool_name
  type = "dir"

  target {
    path = var.libvirt_pool_path
  }
}

resource "libvirt_volume" "base" {
  name   = "${var.code}_base.img"
  pool   = libvirt_pool.pool.name
  source = var.base_img_url
  format = "qcow2"
}

resource "libvirt_volume" "root" {
  count          = var.vm_count
  name           = "${format("${var.vm_name}%02s", count.index)}.qcow2"
  pool           = libvirt_pool.pool.name
  base_volume_id = libvirt_volume.base.id
  size           = 1024 * 1024 * 1024 * 32 # 32 TiB
}

data "template_file" "user_data" {
  count    = var.vm_count
  template = file("${path.module}/cloud_init.yml")

  vars = {
    vm_hostname = "${format("${var.vm_name}%02s", count.index)}.local"
  }
}

resource "libvirt_cloudinit_disk" "cloudinit" {
  count     = var.vm_count
  name      = "${format("${var.vm_name}%02s", count.index)}_cloudinit.iso"
  user_data = data.template_file.user_data[count.index].rendered #if you set network user no go
  pool      = libvirt_pool.pool.name
}

resource "libvirt_domain" "guest" {
  count      = var.vm_count
  name       = format("${var.vm_name}%02s", count.index)
  memory     = var.vm_memory
  vcpu       = var.vm_cpus
  running    = true
  autostart  = true
  qemu_agent = true
  cloudinit  = libvirt_cloudinit_disk.cloudinit[count.index].id

  network_interface {
    bridge         = "br0"
    wait_for_lease = true
  }

  disk {
    volume_id = libvirt_volume.root[count.index].id
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  # console {
  #   type        = "pty"
  #   target_port = "1"
  #   target_type = "virtio"
  # }
}
