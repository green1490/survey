module "control" {
  source = "./modules/node"
  memory = "3GB"
  name = "control-plane"
  network_name = module.control_network.network_name
  storage_name = module.storage.storage_name
  vcpu = "2"
  cloud_init = file("cloud-init/control.yaml")
  fingerprint = module.image.fingerprint
  # static ip
  ipv4 = "172.16.1.100"
}
