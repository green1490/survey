module "worker_network" {
  source = "./modules/network"
  ipv4_subnet = "172.16.2.10/24"
  name = "worker"
}
