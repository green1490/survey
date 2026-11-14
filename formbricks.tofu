module "formbricks" {
  source = "./modules/node"
  memory = "4GB"
  name = "formbricks"
  network_name = module.formbricks_network.network_name
  storage_name = module.storage.storage_name
  vcpu = "4"
  cloud_init = file("cloud-init/control.yaml")
  fingerprint = module.image.fingerprint
  # static ip
  ipv4 = "172.16.1.100"
}
