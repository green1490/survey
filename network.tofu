resource "incus_network" "network" {
  name = "br0"

  config = {
    "ipv4.address" = "10.150.19.1/24"
    "ipv4.nat" = "true"
  }
}
