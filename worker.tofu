module "worker" {
  source = "./modules/node"
  memory = "3GB"
  name = "worker"
  network_name = module.network.network_name
  storage_name = module.storage.storage_name
  vcpu = "2"
  cloud_init = file("cloud-init/worker.yaml")
  fingerprint = module.image.fingerprint
}
