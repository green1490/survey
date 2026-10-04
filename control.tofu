module "storage" {
  source = "./modules/storage"
}

module "network" {
  source = "./modules/network"
  ipv4_subnet = "172.16.0.1/16"
}

module "control" {
  source = "./modules/node"
  memory = "3GB"
  name = "control-plane"
  network_name = module.network.network_name
  storage_name = module.storage.storage_name
  vcpu = "2"
  cloud_init = file("cloud-init/control.yaml")
}
