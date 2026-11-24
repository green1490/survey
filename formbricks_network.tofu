module "bridge" {
  source = "./modules/network"
  ipv4_subnet = "172.16.1.1/24"
  name = "incusbr0"
}
