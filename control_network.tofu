module "control_network" {
  source = "./modules/network"
  ipv4_subnet = "172.16.1.10/24"
  name = "control"
}
