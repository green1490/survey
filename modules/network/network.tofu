resource "incus_network" "network" {
  name = var.name

  config = {
    "ipv4.address" = var.ipv4_subnet
    "ipv4.nat" = "true"
  }
}
