resource "incus_instance" "node" {
  name = "talos"
  image = incus_image.image.fingerprint

  type = "virtual-machine"

  config = {
    "boot.autostart" = true
    "limits.cpu" = 2
    "limits.memory" = "1GiB"
  }

  device {
    name = incus_storage_volume.talos.name
    type = "disk"

    properties = {
      path = "/"
      pool = incus_storage_pool.pool.name
    }
  }

  device {
    name = "eth0"
    type = "nic"

    properties = {
      nictype = "bridged"
      parent = incus_network.network.name
      "ipv4.address" = "10.150.19.50"
    }
  }

  # to not get a null ip when applying talos config resource
  wait_for {
    type = "ipv4"
  }
}
