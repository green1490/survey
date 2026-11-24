module "formbricks" {
  source = "./modules/node"
  memory = "4GB"
  name = "formbricks"
  network_name = module.bridge.network_name
  storage_name = module.formbricks_storage.storage_name
  vcpu = "4"
  cloud_init = file("cloud-init/formbricks.yaml")
  fingerprint = module.image.fingerprint
  # static ip
  ipv4 = "172.16.1.100"
}
