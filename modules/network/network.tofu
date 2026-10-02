resource "incus_network" "network" {
  name = "br0"

  config = {
    "ipv4.address" = var.ipv4_subnet
    "ipv4.nat" = "true"
  }
}
