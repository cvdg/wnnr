# Terraform

## init

```shell
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of dmacvicar/libvirt...
- Finding latest version of hashicorp/template...
- Installing dmacvicar/libvirt v0.8.1...
- Installed dmacvicar/libvirt v0.8.1 (self-signed, key ID 0833E38C51E74D26)
- Installing hashicorp/template v2.2.0...
- Installed hashicorp/template v2.2.0 (signed by HashiCorp)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## plan

```shell
$ terraform plan -out terraform.tfplan
data.template_file.user_data[2]: Reading...
data.template_file.user_data[1]: Reading...
data.template_file.user_data[0]: Reading...
data.template_file.user_data[1]: Read complete after 0s [id=ec1f979aff03bf2118982c86fe680208bef8766cf92d47efd4fa0f147494bf0f]
data.template_file.user_data[2]: Read complete after 0s [id=0a402c13918f08bf2ed618056d036c60cef4ff7f13e6160717b03a727e05f6a1]
data.template_file.user_data[0]: Read complete after 0s [id=3e9f919f24e15c9b22cc2a05c23ee40665fb987817ed4ed1add99e4a851e45eb]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # libvirt_cloudinit_disk.cloudinit[0] will be created
  + resource "libvirt_cloudinit_disk" "cloudinit" {
      + id        = (known after apply)
      + name      = "wnnr00_cloudinit.iso"
      + pool      = "wnnr"
      + user_data = <<-EOT
            #cloud-config
            hostname: wnnr00.local
            manage_etc_hosts: false
            ssh_pwauth: false
            disable_root: true
            users:
              - name: cees
                sudo: ALL=(ALL) NOPASSWD:ALL
                shell: /bin/bash
                ssh_authorized_keys:
                  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKfoFHXWOFc2QalqNbsgn/lHejw/9rlR+/esTdaeN0MN cees.van.de.griend@protonmail.com
            growpart:
              mode: auto
              devices: ["/"]
              ignore_growroot_disabled: false

            package_update: true
            package_upgrade: true
            packages:
              - qemu-guest-agent

            runcmd:
              - [ systemctl, start, qemu-guest-agent ]
        EOT
    }

  # libvirt_cloudinit_disk.cloudinit[1] will be created
  + resource "libvirt_cloudinit_disk" "cloudinit" {
      + id        = (known after apply)
      + name      = "wnnr01_cloudinit.iso"
      + pool      = "wnnr"
      + user_data = <<-EOT
            #cloud-config
            hostname: wnnr01.local
            manage_etc_hosts: false
            ssh_pwauth: false
            disable_root: true
            users:
              - name: cees
                sudo: ALL=(ALL) NOPASSWD:ALL
                shell: /bin/bash
                ssh_authorized_keys:
                  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKfoFHXWOFc2QalqNbsgn/lHejw/9rlR+/esTdaeN0MN cees.van.de.griend@protonmail.com
            growpart:
              mode: auto
              devices: ["/"]
              ignore_growroot_disabled: false

            package_update: true
            package_upgrade: true
            packages:
              - qemu-guest-agent

            runcmd:
              - [ systemctl, start, qemu-guest-agent ]
        EOT
    }

  # libvirt_cloudinit_disk.cloudinit[2] will be created
  + resource "libvirt_cloudinit_disk" "cloudinit" {
      + id        = (known after apply)
      + name      = "wnnr02_cloudinit.iso"
      + pool      = "wnnr"
      + user_data = <<-EOT
            #cloud-config
            hostname: wnnr02.local
            manage_etc_hosts: false
            ssh_pwauth: false
            disable_root: true
            users:
              - name: cees
                sudo: ALL=(ALL) NOPASSWD:ALL
                shell: /bin/bash
                ssh_authorized_keys:
                  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKfoFHXWOFc2QalqNbsgn/lHejw/9rlR+/esTdaeN0MN cees.van.de.griend@protonmail.com
            growpart:
              mode: auto
              devices: ["/"]
              ignore_growroot_disabled: false

            package_update: true
            package_upgrade: true
            packages:
              - qemu-guest-agent

            runcmd:
              - [ systemctl, start, qemu-guest-agent ]
        EOT
    }

  # libvirt_domain.guest[0] will be created
  + resource "libvirt_domain" "guest" {
      + arch        = (known after apply)
      + autostart   = true
      + cloudinit   = (known after apply)
      + emulator    = (known after apply)
      + fw_cfg_name = "opt/com.coreos/config"
      + id          = (known after apply)
      + machine     = (known after apply)
      + memory      = 2048
      + name        = "wnnr00"
      + qemu_agent  = true
      + running     = true
      + type        = "kvm"
      + vcpu        = 2

      + console {
          + source_host    = "127.0.0.1"
          + source_service = "0"
          + target_port    = "0"
          + target_type    = "virtio"
          + type           = "pty"
        }

      + disk {
          + scsi      = false
          + volume_id = (known after apply)
          + wwn       = (known after apply)
        }

      + network_interface {
          + addresses      = (known after apply)
          + bridge         = "br0"
          + hostname       = (known after apply)
          + mac            = (known after apply)
          + network_id     = (known after apply)
          + network_name   = (known after apply)
          + wait_for_lease = true
        }
    }

  # libvirt_domain.guest[1] will be created
  + resource "libvirt_domain" "guest" {
      + arch        = (known after apply)
      + autostart   = true
      + cloudinit   = (known after apply)
      + emulator    = (known after apply)
      + fw_cfg_name = "opt/com.coreos/config"
      + id          = (known after apply)
      + machine     = (known after apply)
      + memory      = 2048
      + name        = "wnnr01"
      + qemu_agent  = true
      + running     = true
      + type        = "kvm"
      + vcpu        = 2

      + console {
          + source_host    = "127.0.0.1"
          + source_service = "0"
          + target_port    = "0"
          + target_type    = "virtio"
          + type           = "pty"
        }

      + disk {
          + scsi      = false
          + volume_id = (known after apply)
          + wwn       = (known after apply)
        }

      + network_interface {
          + addresses      = (known after apply)
          + bridge         = "br0"
          + hostname       = (known after apply)
          + mac            = (known after apply)
          + network_id     = (known after apply)
          + network_name   = (known after apply)
          + wait_for_lease = true
        }
    }

  # libvirt_domain.guest[2] will be created
  + resource "libvirt_domain" "guest" {
      + arch        = (known after apply)
      + autostart   = true
      + cloudinit   = (known after apply)
      + emulator    = (known after apply)
      + fw_cfg_name = "opt/com.coreos/config"
      + id          = (known after apply)
      + machine     = (known after apply)
      + memory      = 2048
      + name        = "wnnr02"
      + qemu_agent  = true
      + running     = true
      + type        = "kvm"
      + vcpu        = 2

      + console {
          + source_host    = "127.0.0.1"
          + source_service = "0"
          + target_port    = "0"
          + target_type    = "virtio"
          + type           = "pty"
        }

      + disk {
          + scsi      = false
          + volume_id = (known after apply)
          + wwn       = (known after apply)
        }

      + network_interface {
          + addresses      = (known after apply)
          + bridge         = "br0"
          + hostname       = (known after apply)
          + mac            = (known after apply)
          + network_id     = (known after apply)
          + network_name   = (known after apply)
          + wait_for_lease = true
        }
    }

  # libvirt_pool.pool will be created
  + resource "libvirt_pool" "pool" {
      + allocation = (known after apply)
      + available  = (known after apply)
      + capacity   = (known after apply)
      + id         = (known after apply)
      + name       = "wnnr"
      + type       = "dir"

      + target {
          + path = "/srv/wnnr"
        }
    }

  # libvirt_volume.base will be created
  + resource "libvirt_volume" "base" {
      + format = "qcow2"
      + id     = (known after apply)
      + name   = "wnnr_base.img"
      + pool   = "wnnr"
      + size   = (known after apply)
      + source = "https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-generic-amd64.qcow2"
    }

  # libvirt_volume.root[0] will be created
  + resource "libvirt_volume" "root" {
      + base_volume_id = (known after apply)
      + format         = (known after apply)
      + id             = (known after apply)
      + name           = "wnnr00.qcow2"
      + pool           = "wnnr"
      + size           = 34359738368
    }

  # libvirt_volume.root[1] will be created
  + resource "libvirt_volume" "root" {
      + base_volume_id = (known after apply)
      + format         = (known after apply)
      + id             = (known after apply)
      + name           = "wnnr01.qcow2"
      + pool           = "wnnr"
      + size           = 34359738368
    }

  # libvirt_volume.root[2] will be created
  + resource "libvirt_volume" "root" {
      + base_volume_id = (known after apply)
      + format         = (known after apply)
      + id             = (known after apply)
      + name           = "wnnr02.qcow2"
      + pool           = "wnnr"
      + size           = 34359738368
    }

Plan: 11 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + ip_address = {
      + wnnr00 = (known after apply)
      + wnnr01 = (known after apply)
      + wnnr02 = (known after apply)
    }

──────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: terraform.tfplan

To perform exactly these actions, run the following command to apply:
    terraform apply "terraform.tfplan"

```

## apply

```shell
$ terraform apply terraform.tfplan
libvirt_pool.pool: Creating...
libvirt_pool.pool: Creation complete after 0s [id=32d0469e-9588-4948-8e86-f2ab48213be4]
libvirt_cloudinit_disk.cloudinit[2]: Creating...
libvirt_volume.base: Creating...
libvirt_cloudinit_disk.cloudinit[0]: Creating...
libvirt_cloudinit_disk.cloudinit[1]: Creating...
libvirt_volume.base: Still creating... [10s elapsed]
libvirt_cloudinit_disk.cloudinit[2]: Still creating... [10s elapsed]
libvirt_cloudinit_disk.cloudinit[0]: Still creating... [10s elapsed]
libvirt_cloudinit_disk.cloudinit[1]: Still creating... [10s elapsed]
libvirt_cloudinit_disk.cloudinit[0]: Still creating... [20s elapsed]
libvirt_cloudinit_disk.cloudinit[2]: Still creating... [20s elapsed]
libvirt_volume.base: Still creating... [20s elapsed]
libvirt_cloudinit_disk.cloudinit[1]: Still creating... [20s elapsed]
libvirt_volume.base: Creation complete after 21s [id=/srv/wnnr/wnnr_base.img]
libvirt_volume.root[1]: Creating...
libvirt_volume.root[2]: Creating...
libvirt_volume.root[0]: Creating...
libvirt_cloudinit_disk.cloudinit[0]: Creation complete after 22s [id=/srv/wnnr/wnnr00_cloudinit.iso;2cbdb43c-658c-4278-b728-af7d5e1f7a9e]
libvirt_cloudinit_disk.cloudinit[2]: Creation complete after 22s [id=/srv/wnnr/wnnr02_cloudinit.iso;c7e04a92-6e95-4883-b1f2-7ca1029ba801]
libvirt_cloudinit_disk.cloudinit[1]: Creation complete after 22s [id=/srv/wnnr/wnnr01_cloudinit.iso;059ef476-f033-4e43-afe6-ca9e9095d200]
libvirt_volume.root[2]: Creation complete after 1s [id=/srv/wnnr/wnnr02.qcow2]
libvirt_volume.root[1]: Creation complete after 1s [id=/srv/wnnr/wnnr01.qcow2]
libvirt_volume.root[0]: Creation complete after 1s [id=/srv/wnnr/wnnr00.qcow2]
libvirt_domain.guest[0]: Creating...
libvirt_domain.guest[1]: Creating...
libvirt_domain.guest[2]: Creating...
libvirt_domain.guest[2]: Still creating... [10s elapsed]
libvirt_domain.guest[1]: Still creating... [10s elapsed]
libvirt_domain.guest[0]: Still creating... [10s elapsed]
libvirt_domain.guest[1]: Still creating... [20s elapsed]
libvirt_domain.guest[2]: Still creating... [20s elapsed]
libvirt_domain.guest[0]: Still creating... [20s elapsed]
libvirt_domain.guest[1]: Still creating... [30s elapsed]
libvirt_domain.guest[0]: Still creating... [30s elapsed]
libvirt_domain.guest[2]: Still creating... [30s elapsed]
libvirt_domain.guest[2]: Still creating... [40s elapsed]
libvirt_domain.guest[1]: Still creating... [40s elapsed]
libvirt_domain.guest[0]: Still creating... [40s elapsed]
libvirt_domain.guest[0]: Still creating... [50s elapsed]
libvirt_domain.guest[1]: Still creating... [50s elapsed]
libvirt_domain.guest[2]: Still creating... [50s elapsed]
libvirt_domain.guest[1]: Still creating... [1m0s elapsed]
libvirt_domain.guest[2]: Still creating... [1m0s elapsed]
libvirt_domain.guest[0]: Still creating... [1m0s elapsed]
libvirt_domain.guest[2]: Still creating... [1m10s elapsed]
libvirt_domain.guest[0]: Still creating... [1m10s elapsed]
libvirt_domain.guest[1]: Still creating... [1m10s elapsed]
libvirt_domain.guest[2]: Creation complete after 1m14s [id=f574ba92-5006-4092-9adc-4b671d8f0eac]
libvirt_domain.guest[1]: Creation complete after 1m14s [id=ec749443-7ff3-4324-8027-46f1210f984f]
libvirt_domain.guest[0]: Creation complete after 1m14s [id=c6664c89-7903-48bf-942a-bf2a9766be10]

Apply complete! Resources: 11 added, 0 changed, 0 destroyed.

Outputs:

ip_address = {
  "wnnr00" = "192.168.2.50"
  "wnnr01" = "192.168.2.51"
  "wnnr02" = "192.168.2.49"
}

```

## plan extra guest

```shell
$ terraform plan -out terraform.tfplan -var vm_count=4
data.template_file.user_data[3]: Reading...
data.template_file.user_data[2]: Reading...
data.template_file.user_data[0]: Reading...
data.template_file.user_data[1]: Reading...
data.template_file.user_data[2]: Read complete after 0s [id=0a402c13918f08bf2ed618056d036c60cef4ff7f13e6160717b03a727e05f6a1]
data.template_file.user_data[0]: Read complete after 0s [id=3e9f919f24e15c9b22cc2a05c23ee40665fb987817ed4ed1add99e4a851e45eb]
data.template_file.user_data[1]: Read complete after 0s [id=ec1f979aff03bf2118982c86fe680208bef8766cf92d47efd4fa0f147494bf0f]
data.template_file.user_data[3]: Read complete after 0s [id=93fd3e5fcd2f2f6a12b31b683be499dc15d9e504d585002c645f35c12a62c393]
libvirt_pool.pool: Refreshing state... [id=32d0469e-9588-4948-8e86-f2ab48213be4]
libvirt_cloudinit_disk.cloudinit[0]: Refreshing state... [id=/srv/wnnr/wnnr00_cloudinit.iso;2cbdb43c-658c-4278-b728-af7d5e1f7a9e]
libvirt_cloudinit_disk.cloudinit[2]: Refreshing state... [id=/srv/wnnr/wnnr02_cloudinit.iso;c7e04a92-6e95-4883-b1f2-7ca1029ba801]
libvirt_cloudinit_disk.cloudinit[1]: Refreshing state... [id=/srv/wnnr/wnnr01_cloudinit.iso;059ef476-f033-4e43-afe6-ca9e9095d200]
libvirt_volume.base: Refreshing state... [id=/srv/wnnr/wnnr_base.img]
libvirt_volume.root[0]: Refreshing state... [id=/srv/wnnr/wnnr00.qcow2]
libvirt_volume.root[1]: Refreshing state... [id=/srv/wnnr/wnnr01.qcow2]
libvirt_volume.root[2]: Refreshing state... [id=/srv/wnnr/wnnr02.qcow2]
libvirt_domain.guest[2]: Refreshing state... [id=f574ba92-5006-4092-9adc-4b671d8f0eac]
libvirt_domain.guest[0]: Refreshing state... [id=c6664c89-7903-48bf-942a-bf2a9766be10]
libvirt_domain.guest[1]: Refreshing state... [id=ec749443-7ff3-4324-8027-46f1210f984f]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # libvirt_cloudinit_disk.cloudinit[3] will be created
  + resource "libvirt_cloudinit_disk" "cloudinit" {
      + id        = (known after apply)
      + name      = "wnnr03_cloudinit.iso"
      + pool      = "wnnr"
      + user_data = <<-EOT
            #cloud-config
            hostname: wnnr03.local
            manage_etc_hosts: false
            ssh_pwauth: false
            disable_root: true
            users:
              - name: cees
                sudo: ALL=(ALL) NOPASSWD:ALL
                shell: /bin/bash
                ssh_authorized_keys:
                  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKfoFHXWOFc2QalqNbsgn/lHejw/9rlR+/esTdaeN0MN cees.van.de.griend@protonmail.com
            growpart:
              mode: auto
              devices: ["/"]
              ignore_growroot_disabled: false

            package_update: true
            package_upgrade: true
            packages:
              - qemu-guest-agent

            runcmd:
              - [ systemctl, start, qemu-guest-agent ]
        EOT
    }

  # libvirt_domain.guest[3] will be created
  + resource "libvirt_domain" "guest" {
      + arch        = (known after apply)
      + autostart   = true
      + cloudinit   = (known after apply)
      + emulator    = (known after apply)
      + fw_cfg_name = "opt/com.coreos/config"
      + id          = (known after apply)
      + machine     = (known after apply)
      + memory      = 2048
      + name        = "wnnr03"
      + qemu_agent  = true
      + running     = true
      + type        = "kvm"
      + vcpu        = 2

      + console {
          + source_host    = "127.0.0.1"
          + source_service = "0"
          + target_port    = "0"
          + target_type    = "virtio"
          + type           = "pty"
        }

      + disk {
          + scsi      = false
          + volume_id = (known after apply)
          + wwn       = (known after apply)
        }

      + network_interface {
          + addresses      = (known after apply)
          + bridge         = "br0"
          + hostname       = (known after apply)
          + mac            = (known after apply)
          + network_id     = (known after apply)
          + network_name   = (known after apply)
          + wait_for_lease = true
        }
    }

  # libvirt_volume.root[3] will be created
  + resource "libvirt_volume" "root" {
      + base_volume_id = "/srv/wnnr/wnnr_base.img"
      + format         = (known after apply)
      + id             = (known after apply)
      + name           = "wnnr03.qcow2"
      + pool           = "wnnr"
      + size           = 34359738368
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  ~ ip_address = {
      + wnnr03 = (known after apply)
        # (3 unchanged attributes hidden)
    }

─────────────────────────────────────────────────────────────────────────────────────────────────────────
Saved the plan to: terraform.tfplan

To perform exactly these actions, run the following command to apply:
    terraform apply "terraform.tfplan"

```

## apply extra guest

```shell
$ terraform apply terraform.tfplan
libvirt_cloudinit_disk.cloudinit[3]: Creating...
libvirt_volume.root[3]: Creating...
libvirt_volume.root[3]: Creation complete after 0s [id=/srv/wnnr/wnnr03.qcow2]
libvirt_cloudinit_disk.cloudinit[3]: Creation complete after 0s [id=/srv/wnnr/wnnr03_cloudinit.iso;8eb10d97-115d-4888-abc8-093c5fdbef30]
libvirt_domain.guest[3]: Creating...
libvirt_domain.guest[3]: Still creating... [10s elapsed]
libvirt_domain.guest[3]: Still creating... [20s elapsed]
libvirt_domain.guest[3]: Still creating... [30s elapsed]
libvirt_domain.guest[3]: Still creating... [40s elapsed]
libvirt_domain.guest[3]: Creation complete after 44s [id=54b0524d-c3bf-4c5f-808f-00f27af36fbe]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

ip_address = {
  "wnnr00" = "192.168.2.50"
  "wnnr01" = "192.168.2.51"
  "wnnr02" = "192.168.2.49"
  "wnnr03" = "192.168.2.52"
}

```

##  output

```shell
$ terraform output
ip_address = {
  "wnnr00" = "192.168.2.50"
  "wnnr01" = "192.168.2.51"
  "wnnr02" = "192.168.2.49"
  "wnnr03" = "192.168.2.52"
}

```

## created images

```shell
$ ssh srv02 sudo ls -lRh /srv/
/srv/:
total 0
drwx--x--x 1 root root 282 Nov  6 12:38 wnnr

/srv/wnnr:
total 2.1G
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 364K Nov  6 12:34 wnnr00_cloudinit.iso
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 493M Nov  6 12:41 wnnr00.qcow2
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 364K Nov  6 12:34 wnnr01_cloudinit.iso
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 489M Nov  6 12:41 wnnr01.qcow2
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 364K Nov  6 12:34 wnnr02_cloudinit.iso
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 357M Nov  6 12:41 wnnr02.qcow2
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 364K Nov  6 12:38 wnnr03_cloudinit.iso
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 389M Nov  6 12:41 wnnr03.qcow2
-rw-r--r-- 1 libvirt-qemu libvirt-qemu 422M Nov  6 12:34 wnnr_base.img
```