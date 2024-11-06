variable "code" {
  description = "Project code"
  type        = string
  default     = "wnnr"
}

variable "vm_count" {
  description = "Number of VMs"
  type        = number
  default     = 3
}

variable "base_img_url" {
  description = "URL to debian cloud img qcow2"
  type        = string
  default     = "https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-generic-amd64.qcow2"
}

variable "libvirt_uri" {
  description = "libvirt_uri"
  type        = string
  default     = "qemu+ssh://cees@srv02/system?known_hosts_verify=ignore"
}

variable "libvirt_pool_name" {
  description = "libvirt pool name"
  type        = string
  default     = "wnnr"
}

variable "libvirt_pool_path" {
  description = "Libvirt pool dir path"
  type        = string
  default     = "/srv/wnnr"
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
  default     = "wnnr"
}

variable "vm_size" {
  description = "Size of the VM (16 GiB)"
  type        = number
  default     = 16 * 1024 * 1024 * 1024
}

variable "vm_memory" {
  description = "Memory of the VM (2 GiB)"
  type        = number
  default     = 2 * 1024
}

variable "vm_cpus" {
  description = "CPUs of the VM (2)"
  type        = number
  default     = 2
}
