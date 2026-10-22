resource "incus_instance" "node" {
  name = var.name
  image = var.fingerprint

  type = "virtual-machine"

  config = {
    "boot.autostart" = true
    "limits.cpu" = var.vcpu
    "limits.memory" = var.memory
    "cloud-init.user-data" = var.cloud_init
  }

  wait_for {
    type = "cloud-init"
  }

  device {
    name = uuid()
    type = "disk"

    properties = {
      path = "/"
      pool = var.storage_name
    }
  }

  dynamic "device" {
    for_each = var.ipv4 != null ? [1] : []
    content {
      name = "eth0"
      type = "nic"

      properties = {
        nictype = "bridged"
        parent = var.network_name
        "ipv4.address" = var.ipv4
      }
    }
  }

  dynamic "device" {
    for_each = var.ipv4 == null ? [1] : []
    content {
      name = "eth0"
      type = "nic"

      properties = {
        nictype = "bridged"
        parent = var.network_name
      }
    }
  }
}
