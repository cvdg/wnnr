variable "base_img_url" {
  description = "URL to debian cloud img qcow2"
  type        = string
  default     = "https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-generic-amd64.qcow2"
}

variable "libvirt_uri" {
  description = "libvirt_uri"
  type        = string
  # default     = "qemu+ssh://markom@baubilas.markom.lt:8022/system?known_hosts_verify=ignore"
  default     = "qemu+ssh://cees@srv02/system?known_hosts_verify=ignore"
}

variable "libvirt_pool_name" {
  description = "libvirt pool name"
  type        = string
  default     = "default"
}

variable "libvirt_pool_path" {
  description = "Libvirt pool dir path"
  type        = string
  default     = "/srv/default"
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
  default     = "terraform"
}

variable "vm_size" {
  description = "Size of the VM"
  type        = number
  default     = 5361393664
}

variable "vm_memory" {
  description = "Memory of the VM"
  type        = number
  default     = 1024
}

variable "vm_cpus" {
  description = "CPUs of the VM"
  type        = number
  default     = 1
}