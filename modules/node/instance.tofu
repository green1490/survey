resource "incus_instance" "node" {
  name = var.name
  image = incus_image.image.fingerprint

  type = "virtual-machine"

  config = {
    "boot.autostart" = true
    "limits.cpu" = var.vcpu
    "limits.memory" = var.memory
    "cloud-init.user-data" = var.cloud_init
  }

  device {
    name = uuid()
    type = "disk"

    properties = {
      path = "/"
      pool = var.storage_name
    }
  }

  device {
    name = "eth0"
    type = "nic"

    properties = {
      nictype = "bridged"
      parent = var.network_name
    }
  }
}
