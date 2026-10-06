variable "name" {
  type = string
  description = "The name of the node's name"
}

variable "vcpu" {
  type = string
  description = "Number of vcpu which the node will use"
}

variable "memory" {
  type = string
  description = "Amount of ram the node can use"
  validation {
    error_message = "Wrong format! Use the avaible units at incus units chapter or remove the space"
    condition = can(regex("^(?i)[0-9]+(\\.[0-9]+)?(B|bytes|kB|MB|GB|TB|PB|EB|KiB|MiB|GiB|TiB|PiB|EiB)$", var.memory))
  }
}

variable "storage_name" {
  type = string
}

variable "network_name" {
  type = string
}

variable "cloud_init" {
  type = string
  description = "Content of an cloud-init script"
}

variable "fingerprint" {
  type = string
  description = "Incus image's fingerprint"
}
