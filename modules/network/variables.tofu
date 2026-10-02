variable "ipv4_subnet" {
  type = string
  description = "The subnet of the node"
  validation {
    error_message = "Must contain cidr"
    condition = strcontains(var.ipv4_subnet, "/")
  }
}
